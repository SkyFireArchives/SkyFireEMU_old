#include <windows.h>
#include <stdio.h>
#include <iostream>
#include <algorithm>
#include "fstream"
#include <tlhelp32.h>
#include <shlwapi.h>
#include <cassert>

#define CREATE_THREAD_ACCESS (PROCESS_CREATE_THREAD | PROCESS_QUERY_INFORMATION | PROCESS_VM_OPERATION | PROCESS_VM_WRITE | PROCESS_VM_READ)
using namespace std;

#pragma comment(lib, "shlwapi.lib")

unsigned long GetPrcID(char *procName)
{
	PROCESSENTRY32 pe;
	HANDLE thSnapshot;
	BOOL retval, ProcFound = false;
	
	thSnapshot = CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
	
	if(thSnapshot == INVALID_HANDLE_VALUE)
	{
		//MessageBox(NULL, "Error: unable to create toolhelp snapshot", "Loader", NULL);
		return false;
	}
	
	pe.dwSize = sizeof(PROCESSENTRY32);
	
	retval = Process32First(thSnapshot, &pe);;
	
	while(retval)
	{
		if(StrStrI(pe.szExeFile, procName) )
		{
			ProcFound = true;
			break;
		}
		
		retval    = Process32Next(thSnapshot,&pe);
		pe.dwSize = sizeof(PROCESSENTRY32);
	}
	
	return pe.th32ProcessID;
}

int InjectDLL(DWORD ProcessID, const char* dll_name)
{
	HANDLE Proc; DWORD dwError;
	char buf[50]={0};
	LPVOID RemoteString, LoadLibAddy;
	
	if(!ProcessID)
        return 0;
	TOKEN_PRIVILEGES Priv, PrivOld;
	DWORD cbPriv = sizeof(PrivOld);
	HANDLE hToken;
	
	// get current thread token
	if (!OpenThreadToken(GetCurrentThread(),
						 TOKEN_QUERY|TOKEN_ADJUST_PRIVILEGES,
						 FALSE, &hToken))
	{
		if (GetLastError() != ERROR_NO_TOKEN)
			return 1;
		
		// revert to the process token, if not impersonating
		if (!OpenProcessToken(GetCurrentProcess(),
							  TOKEN_QUERY|TOKEN_ADJUST_PRIVILEGES,
							  &hToken))
			return 2;
	}
	
	assert(ANYSIZE_ARRAY > 0);
	
	Priv.PrivilegeCount = 1;
	Priv.Privileges[0].Attributes = SE_PRIVILEGE_ENABLED;
	LookupPrivilegeValue(NULL, SE_DEBUG_NAME,
						 &Priv.Privileges[0].Luid);
	
	// try to enable the privilege
	if (!AdjustTokenPrivileges(hToken, FALSE, &Priv, sizeof(Priv),
							   &PrivOld, &cbPriv))
	{
		dwError = GetLastError();
		CloseHandle(hToken);
		SetLastError(dwError);
		return 3;
	}
	
	if (GetLastError() == ERROR_NOT_ALL_ASSIGNED)
	{
		// the SE_DEBUG_NAME privilege is not in the caller's token
		CloseHandle(hToken);
		SetLastError(ERROR_ACCESS_DENIED);
		return 4;
	}
	
	Proc = OpenProcess(CREATE_THREAD_ACCESS, FALSE, ProcessID);
	AdjustTokenPrivileges(hToken, FALSE, &PrivOld, sizeof(PrivOld),
						  NULL, NULL);
	CloseHandle(hToken);
	if(!Proc)
	{
		sprintf(buf, "OpenProcess() failed: %d", GetLastError());
		//MessageBox(NULL, buf, "Loader", NULL);
		return 5;
	}
	
	LoadLibAddy = (LPVOID)GetProcAddress(GetModuleHandleA("kernel32.dll"), "LoadLibraryA");
	RemoteString = (LPVOID)VirtualAllocEx(Proc, NULL, strlen(dll_name), MEM_RESERVE|MEM_COMMIT, PAGE_READWRITE);
	WriteProcessMemory(Proc, (LPVOID)RemoteString, dll_name,strlen(dll_name), NULL);
	CreateRemoteThread(Proc, NULL, NULL, (LPTHREAD_START_ROUTINE)LoadLibAddy, (LPVOID)RemoteString, NULL, NULL);
	
	
	CloseHandle(Proc);
	
	return 6;
}
bool FileExists(char * fileName)
{
	FILE * infile;
	bool ret = false;
	infile = fopen(fileName, "r");
	if (infile == NULL)   {
		ret = false;
	}
	else   {
		ret = true;
		fclose(infile);
	}
	return ret;
}

int mainInjector()
{
	DWORD ProcessID = GetPrcID("Wow.exe");
    return InjectDLL(ProcessID, "CactusRedirect.dll");
}