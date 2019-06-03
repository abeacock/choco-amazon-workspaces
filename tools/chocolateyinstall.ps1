$ErrorActionPreference	= 'Stop';
$toolsDir	= "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName	= 'amazon-workspaces'
$fileType	= 'msi'
$url	= 'https://d2td7dqidlhjx7.cloudfront.net/prod/global/windows/Amazon+WorkSpaces.msi'
$softwareName	= "Amazon WorkSpaces*"
$checksum	= 'FE56F0618E55F74D675C814B533B43B7B035CF301B8DD07FA7C9CE2480D199E1'
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
