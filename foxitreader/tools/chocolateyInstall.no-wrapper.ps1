﻿# Installation script for times when FoxitReader bundles its installer *without* a wrapper setup.
#
# Original source of chocolateyInstall.ps1 in the repository: chocolateyInstall.no-wrapper.ps1
# (chocolateyInstall.no-wrapper.ps1 will be automatically copied to chocolateyInstall.ps1 by
#  the update.ps1 AU script.)

$ErrorActionPreference = 'Stop'

# See the comments in  https://github.com/ComFreek/chocolatey-packages/blob/master/foxitreader/update.ps1
# on the &language=German part.
$url32       = 'https://www.foxitsoftware.com/downloads/latest.php?product=Foxit-Reader&platform=Windows&package_type=exe&language=German&version=9.7.1.29511'
$checksum32  = 'e4a9b37bb101be67b189483eb5190efb09167331f8e57511c3f5ef76d074a1b6'

$installationArgs = @{
	PackageName    = 'foxitreader'
	FileType       = 'EXE'
	Url            = $url32
	Checksum       = $checksum32
	ChecksumType   = 'sha256'
	silentArgs     = '/verysilent'
	validExitCodes = @(0)
}

Install-ChocolateyPackage @installationArgs
