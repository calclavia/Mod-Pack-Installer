@echo off
echo Extracting mod pack...
"C:\Program Files\7-Zip\7z.exe" x %* -oTempPack

echo Cleaning up mods...
rd /s /q %USERPROFILE%\AppData\Roaming\.minecraft\config
rd /s /q %USERPROFILE%\AppData\Roaming\.minecraft\mods

echo Injecting mods and configs
mkdir %USERPROFILE%\AppData\Roaming\.minecraft\config
mkdir %USERPROFILE%\AppData\Roaming\.minecraft\mods

xcopy /s /y TempPack\minecraft\config\* %USERPROFILE%\AppData\Roaming\.minecraft\config
xcopy /s /y TempPack\minecraft\mods\* %USERPROFILE%\AppData\Roaming\.minecraft\mods

rd /s /q TempPack

echo Mod pack injection completed.
pause
