$env:ChoclateyPackageName = 'Mobile_VPN_with_SSL'
$ErrorActionPreference = 'Stop'
$toolsDir   = $(Split-Path -parent $MyInvocation.MyCommand.Definition)

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'EXE'
  file         = Get-Item $toolsDir\*.exe
  softwareName  = 'Mobile_VPN_with_SSL*'
  silentArgs    = "/VERYSILENT"
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs 