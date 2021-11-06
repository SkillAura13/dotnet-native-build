@echo off

REM Setup.bat

title C# Native Build Setup
echo #####################
echo C# Native Build Setup
echo #####################
echo.

if not exist NugetConfWriter.vbs (
echo Could not find NugetConfWriter.vbs
pause
exit
)

echo This script assumes you are in the top directory of the project, not the solution. If you are not, please exit this script and enter that directory.
pause

if exist nuget.config (
echo Nuget config already exists, backing up to nuget.config.backup
move nuget.config nuget.config.backup
)

echo Creating Nuget config
dotnet new nuget

echo Settings up Nuget config
cscript NugetConfWriter.vbs //B

echo Adding compiler reference
dotnet add package Microsoft.DotNet.ILCompiler -v 1.0.0-alpha-* 

echo Generating build scripts
echo dotnet publish -r win-x64 -c Release > Build-Windows-x64.bat
echo dotnet publish -r linux-x64 -c Release > Build-Linux-x64.bat
echo dotnet publish -r osx-x64 -c Release > Build-Mac-x64.bat

echo Done.
pause