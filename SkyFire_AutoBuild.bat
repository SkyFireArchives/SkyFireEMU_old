REM SkyFire AutoBuild System. Version 1.0
@echo OFF
CLS
REM Compiler Version: Visual Studio 10 = "2010"
set compiler_ver=2010

REM Visual Studio build configuration: Release (default), MinSizeRel, RelWithDebInfo or Debug
set build=Release

REM Select cMake generator: "Visual Studio 10" (32Bit), "Visual Studio 10 Win64" (64Bit)
set cMake_Generator="Visual Studio 10"

REM Folders
set f_sources=.
set f_cmake=.
set f_compile_output=%f_cmake%\bin\Release\

REM Checking for 32/64Bit OS
set prog_path=%ProgramFiles%
if not "[%ProgramFiles(x86)%]"=="[]" set prog_path=%ProgramFiles(x86)%

REM Programs
set Git="%prog_path%\Git\bin\git.exe"
set CMake="%prog_path%\CMake 2.8\bin\cmake.exe"

REM VisualStudio Path
set VisualStudio_2010="%prog_path%\Microsoft Visual Studio 10.0\Common7\IDE\devenv.exe"

echo ###############################################################################
echo ###                     SkyFire AutoBuild Vesion 1.0                        ###
echo ###############################################################################
echo.
echo 1. cMake ###
echo ###############################################################################
echo.

IF not exist %f_cmake% (
echo ### Create folder "%f_cmake%"
md %f_cmake%
)ELSE (
echo ### Clear "%f_compile_output%"
del %f_compile_output%*.* /q
echo.
echo - Done!
echo.
)

echo.
echo ### Start cMake
echo.
cd %f_cmake%
call %CMAKE% -G %cMake_Generator% %f_sources%
echo.

echo.
echo 2. Compile SkyFire with VisualStudio CommandLine ###
echo ###############################################################################
echo.

echo - This will take some minutes...
echo - Get a coffee, check your mail, take a shit...
echo - You will not see any messages until finished...
call %VisualStudio_2010% /out "%f_compile_output%build_%Date%.txt" /rebuild %build% "%f_cmake%\CactusEMU.sln"

echo.
echo 3. Build SkyFire finished ###
echo ###############################################################################
echo.

echo --- All Done :) ---
echo.

PAUSE

REM Clear Variables ###
REM ################################################################################
set build=
set cMake_Generator=
set repo_git=
set f_sources=
set f_cmake=
set f_compile_output=
set Git=
set CMake=
set VisualStudio=
REM EOF