cd /d %~dp0
@ECHO OFF

SET projName=Toolbar
SET dllName=aaa_toolbar
SET buildPath=bin\debug
SET baseDir=..\..\..\..\
SET pluginPath=%projName%\Plugins



SET buildDir=%buildPath%\
SET gameDataDir=%baseDir%GameData\
SET pdbExe=%baseDir%pdb2mdb\pdb2mdb.exe
REM SET 

echo .

echo %cd%\%pdbExe% %cd%\%buildDir%%dllName%.dll

%cd%\%pdbExe% %cd%\%buildDir%%dllName%.dll

REM $(ProjectDir)..\..\..\..\pdb2mdb\pdb2mdb.exe $(TargetPath)
echo .
echo %cd%\%buildPath%
echo .
echo %cd%\%gameDataDir%\%projName%\

xcopy %cd%\%buildPath% %cd%\%gameDataDir%%pluginPath%\ /Y

echo .
echo /