@echo off
if "%1"=="PublishPackages" goto publish

dotnet build .build\build.proj /p:Version=7.2-beta3 %*

goto end

:publish
powershell.exe -noprofile .build\publish-nuget-packages.ps1

goto end

:end