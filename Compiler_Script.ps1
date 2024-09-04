Set-ExecutionPolicy Unrestricted
Install-Module ps2exe         
Import-Module ps2exe
cd "C:\Users\melod\Downloads"
Invoke-ps2exe .\Installer.ps1 .\Installer2.exe -iconFile .\CelestialRealm.ico -noConsole
Set-ExecutionPolicy Restricted
