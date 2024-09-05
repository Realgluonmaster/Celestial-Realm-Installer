#Do these one at a time.
Set-ExecutionPolicy Unrestricted
Install-Module ps2exe         
Import-Module ps2exe
cd "C:\Users\melod\Downloads"
Invoke-ps2exe .\Installer_Source_Code.ps1 .\Celestial_Installer.exe -iconFile .\CelestialRealm.ico -noConsole
Set-ExecutionPolicy Restricted
