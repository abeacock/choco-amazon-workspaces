$ErrorActionPreference	= 'Stop';
$toolsDir	= "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName	= 'amazon-workspaces'
$fileType	= 'msi'
$url	= 'https://d2td7dqidlhjx7.cloudfront.net/prod/global/windows/Amazon+WorkSpaces.msi'
$softwareName	= "Amazon WorkSpaces*"
$checksum	= '0C75B3FE1CAFEC70B6D9F3422A45E50E5251A2C7FF501FD17A625AF512196C54'
$checksumType	= 'sha256'
$silentArgs	= '/qn REBOOT=ReallySuppress'
$validExitCodes		= @(0)

	$packageArgs = @{
	  packageName		= $env:ChocolateyPackageName
	  unzipLocation		= $toolsDir
	  fileType			= $fileType
	  url				= $url
	  softwareName		= $softwareName
	  checksum      	= $checksum
	  checksumType		= $checksumType
	  silentArgs		= $silentArgs
	  validExitCodes	= $validExitCodes
	}

Install-ChocolateyPackage @packageArgs
