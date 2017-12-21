Import-Module "${env:ProgramFiles(x86)}\Microsoft Dynamics NAV\110\RoleTailored Client\Microsoft.Dynamics.Nav.Model.Tools.psd1" -force
Import-Module "${env:ProgramFiles}\Microsoft Dynamics NAV\110\Service\NavAdminTool.ps1"



Publish-NAVApp -ServerInstance DynamicsNAV110 -Path C:\Users\milorad\Documents\AL\ALProject1\GRM_Application_1.0.0.0.app

UnInstall-NAVApp -ServerInstance DynamicsNAV110 -Name C:\Users\milorad\Documents\AL\ALProject1\GRM_Application_1.0.0.0.app

Get-NAVAppInfo -ServerInstance DynamicsNAV110

Remove-NAVApplication -DatabaseName "Demo Database NAV (11-0)"

Uninstall-NAVApp -ServerInstance DynamicsNAV110 -Name ALProject1