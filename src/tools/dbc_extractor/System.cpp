#define _CRT_SECURE_NO_DEPRECATE
#define __INCLUDE_CRYPTOGRAPHY__
#define __STORMLIB_SELF__
#include <stdio.h>
#include <cassert>
#include <iostream>
#include <string>
#include <fstream>
#include <set>
#include <algorithm>

#ifdef _WIN32
#include <direct.h>
#else
#include <sys/stat.h>
#endif

#include <fcntl.h>

#ifdef _MSC_VER
#include <crtdbg.h>
#endif

#include "StormLib/src/StormLib.h"
#include "StormLib/src/StormCommon.h"

static int const patchRev[] = {13164, 13205, 13287, 13329};
#define PATCH_REV_COUNT 4
static char* const langs[] = {"enGB", "enUS", "deDE", "esES", "frFR", "koKR", "zhCN", "zhTW", "enCN", "enTW", "esMX", "ruRU" };
#define LANG_COUNT 12
HANDLE localeMPQ[PATCH_REV_COUNT+1];
char* input_path = ".";

bool FileExists( const char* FileName )
{
    FILE *fp = fopen(FileName,"r");
    if( fp ) 
    {
        fclose(fp);
        return true;
    } 
    return false;
}

void CreateDir( const std::string& Path )
{
#ifdef _WIN32
    _mkdir(Path.c_str());
#else
    mkdir(Path.c_str(), 0777);
#endif
}

void LoadLocaleMPQFiles(int const locale)
{
    char filename[512];
	
    //Locale-xxXX.MPQ
    sprintf(filename,"%s/Data/%s/locale-%s.MPQ", input_path, langs[locale], langs[locale]);
    printf("Loading %s\n", filename);
    if(!SFileOpenArchive(filename, 0, MPQ_OPEN_READ_ONLY, &localeMPQ[0]))
        assert(false && "\nLoad of MPQ failed");
	
    for(int i = 0; i < PATCH_REV_COUNT; ++i)
    {
        char ext[7] = "";
        sprintf(ext, "-%i", patchRev[i]);
		
        sprintf(filename,"%s/Data/wow-update%s.MPQ", input_path, ext);
        if(!SFileOpenPatchArchive(localeMPQ[0], filename, langs[locale], MPQ_OPEN_READ_ONLY))
        {
            printf("%u\n", GetLastError());
            assert(false && "Load of MPQ patch failed");
        }
    }
    if(!SFileIsPatchedArchive(localeMPQ[0]))
        assert(false && "An error occured");
	
    //Others
    for(int i = 0; i < PATCH_REV_COUNT; ++i)
    {
        char ext[7] = "";
        sprintf(ext, "-%i", patchRev[i]);
		
        sprintf(filename,"%s/Data/wow-update%s.MPQ", input_path, ext);
        printf("Loading %s\n", filename);
        if(!SFileOpenArchive(filename, 0, MPQ_OPEN_READ_ONLY, &localeMPQ[i+1]))
            assert(false && "Load of MPQ failed");
		
        for(int j = i; j < PATCH_REV_COUNT; ++j)
        {
            char ext[7] = "";
            sprintf(ext, "-%i", patchRev[j]);
			
            sprintf(filename,"%s/Data/wow-update%s.MPQ", input_path, ext);
            if(!SFileOpenPatchArchive(localeMPQ[i+1], filename, langs[locale], MPQ_OPEN_READ_ONLY))
            {
                printf("%u\n", GetLastError());
                assert(false && "Load of MPQ patch failed");
            }
        }
        if(!SFileIsPatchedArchive(localeMPQ[i+1]))
            assert(false && "An error occured");
    }
}

int ExtractLocaleFile(int MPQId, const char * szArchivedFile, const char * szFileName)
{
    HANDLE hFile  = NULL;          // Archived file handle
    TFileStream* handle = NULL;          // Disk file handle
    int    nError = ERROR_SUCCESS; // Result value
    
    // Open a file in the archive, e.g. "data\global\music\Act1\tristram.wav"
    if(nError == ERROR_SUCCESS)            
    {
        if(!SFileOpenFileEx(localeMPQ[MPQId], szArchivedFile, SFILE_OPEN_PATCHED_FILE, &hFile))
            nError = GetLastError();
    }
	
    // Create the target file
    if(nError == ERROR_SUCCESS)
    {
        //handle = CreateFile(szFileName, GENERIC_WRITE, 0, NULL, CREATE_ALWAYS, 0, NULL);
		//if(handle == INVALID_HANDLE_VALUE)
        //    nError = GetLastError();
		handle = FileStream_CreateFile(szFileName);
        if(handle == NULL)
            nError = GetLastError();
    }
	
	/*
	 // Get the size of the full patched file
	 dwFileSize = SFileGetFileSize(hFile, NULL);
	 if(dwFileSize != 0)
	 {
	 // Allocate space for the full file
	 pbFullFile = new BYTE[dwFileSize];
	 if(pbFullFile != NULL)
	 {
	 if(!SFileReadFile(hFile, pbFullFile, dwFileSize))
	 {           
	 nError = GetLastError();
	 printf("Failed to read full patched file data \"%s\"\n", szFileName);
	 }
	 
	 if(nError == ERROR_SUCCESS)
	 {
	 strcpy(szLocFileName, MAKE_PATH("Work//"));
	 strcat(szLocFileName, GetPlainName(szFileName));
	 
	 pStream = FileStream_CreateFile(szLocFileName);
	 if(pStream != NULL)
	 {
	 FileStream_Write(pStream, NULL, pbFullFile, dwFileSize);
	 FileStream_Close(pStream);
	 }
	 }
	 
	 delete [] pbFullFile;
	 }
	 }
	 */
    // Read the file from the archive
    if(nError == ERROR_SUCCESS)
    {
        // Get the size of the full patched file
        DWORD dwFileSize = SFileGetFileSize(hFile, NULL);
        if(dwFileSize != 0)
        {
            // Allocate space for the full file
            BYTE * pbFullFile = new BYTE[dwFileSize];
            if(!SFileReadFile(hFile, pbFullFile, dwFileSize))
			{           
				nError = GetLastError();
				printf("Failed to read full patched file data \"%s\"\n", szFileName);
				assert(false);
			}
			FileStream_Write(handle, NULL, pbFullFile, dwFileSize);
			delete [] pbFullFile;
        }
    }        
	
    // Cleanup and exit
    if(handle != NULL)
        FileStream_Close(handle);
    if(hFile != NULL)
        SFileCloseFile(hFile);
	
    return nError;
}

int ReadBuild(int locale)
{
    // include build info file also
    std::string filename  = std::string("component.wow-")+langs[locale]+".txt";
    //printf("Read %s file... ", filename.c_str());
	
    CreateDir("./dbc/");
    ExtractLocaleFile(0, filename.c_str(), (std::string("./dbc/") + filename).c_str());
	
    std::string text;
    std::string temp;
	
    std::ifstream fichier((std::string("./dbc/") + filename).c_str(), std::ios::in);
    if(!fichier)
        assert(false && "Error when loading component.wow-...");
    while(fichier)
    {
        fichier >> temp;
        text += temp;
    }
	
    size_t pos = text.find("version=\"");
    size_t pos1 = pos + strlen("version=\"");
    size_t pos2 = text.find("\"",pos1);
    if (pos == text.npos || pos2 == text.npos || pos1 >= pos2)
    {
        printf("Fatal error: Invalid  %s file format!\n", filename.c_str());
        exit(1);
    }
	
    std::string build_str = text.substr(pos1,pos2-pos1);
	
    int build = atoi(build_str.c_str());
    if (build <= 0)
    {
        printf("Fatal error: Invalid  %s file format!\n", filename.c_str());
        exit(1);
    }
	
    return build;
}

void ExtractDBCFiles(int locale, bool basicLocale)
{
    printf("Extracting dbc files...\n");
	
    std::set<std::pair<int, std::string> > dbcfiles;
	
    int foundCount = 0;
	
    for(int i = 0; i < PATCH_REV_COUNT + 1; i++)
    {
        TMPQArchive * archive = (TMPQArchive *)localeMPQ[i];
        TFileEntry * pFileEntry = archive->pFileTable;
        TFileEntry * pFileTableEnd = archive->pFileTable + archive->dwFileTableSize;
		
        // Parse the entire block table
        while(pFileEntry < pFileTableEnd)
        {
            // Only take existing files
            if( pFileEntry->dwFlags & MPQ_FILE_EXISTS && 
			   (pFileEntry->dwFlags & MPQ_FILE_PATCH_FILE) == 0 && 
			   (pFileEntry->dwFlags & MPQ_FILE_DELETE_MARKER) == 0 && 
			   pFileEntry->szFileName != NULL)
            {
                std::string name = pFileEntry->szFileName;
                if (i != 0)
                {
                    if(name.find(langs[locale]) == 0)
                        name = name.substr(strlen(langs[locale]) + 1);
                    else
                    {
                        pFileEntry++;
                        continue;
                    }
                }
				
                if (name.rfind(".dbc") == name.length() - strlen(".dbc") ||
					name.rfind(".db2") == name.length() - strlen(".db2"))
                {
                    //Verify if this dbc isn't in the list yet. StormLibs return some extra dbcs :P
                    if(i != 0)
                    {
                        bool alreadyExist = false;
                        for(std::set<std::pair<int, std::string> >::iterator itr = dbcfiles.begin(); itr != dbcfiles.end(); itr++)
                        {
                            if(itr->second == name)
                            {
                                alreadyExist = true;
                                break;
                            }
                        }
                        if(alreadyExist)
                        {
                            pFileEntry++;
                            continue;
                        }
                    }
                    dbcfiles.insert(std::pair<int, std::string>(i, name));
                    foundCount++;
                }
            }
			
            // Move to the next file entry
            pFileEntry++;
        }
    }
    printf("Found %i dbc files\n", foundCount);
	
    std::string path = "./dbc/";
    if(!basicLocale)
    {
        path += langs[locale];
        path += "/";
    }
	CreateDir(path);
	
    // extract DBCs
    int count = 0;
    for (std::set<std::pair<int, std::string> >::iterator iter = dbcfiles.begin(); iter != dbcfiles.end(); ++iter)
    {
        std::string filename = path;
        filename += (iter->second.c_str() + strlen("DBFilesClient\\"));
		
        if(ExtractLocaleFile(iter->first, iter->second.c_str(), filename.c_str()) == ERROR_SUCCESS)
            ++count;
        else
        {
            assert(false);
        }
    }
    printf("Extracted %u DBC files\n\n", count);
}

int main(/*int argc, char * arg[]*/)
{
    printf("DBC Extractor\n");
    printf("===================\n\n");
    
    int FirstLocale = -1;
    int build = 0;
	
    for (int i = 0; i < LANG_COUNT; i++)
    {
        char tmp1[512];
        sprintf(tmp1, "%s/Data/%s/locale-%s.MPQ", input_path, langs[i], langs[i]);
        if (FileExists(tmp1))
        {
            printf("Detected locale: %s\n", langs[i]);
			
            //Open MPQs
            LoadLocaleMPQFiles(i);
			
            //Extract DBC files
            if(FirstLocale < 0)
            {
                FirstLocale = i;
                build = ReadBuild(FirstLocale);
                printf("Detected base client build: %u\n", build);
                ExtractDBCFiles(i, true);
            }
            else
                ExtractDBCFiles(i, false);
        }
    }
	
    if(FirstLocale < 0)
    {
        printf("No locales detected\n");
        return 0;
    }
	
    return 0;
}