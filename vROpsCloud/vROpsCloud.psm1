#region Script Header
#	Thought for the day: 
#	NAME: vROpsCloud.psm1
#	AUTHOR: Lars Panzerbjørn
#	CONTACT: Lars@Panzerbjrn.eu / GitHub: Panzerbjrn / Twitter: Panzerbjrn
#	DATE: 2021.09.18
#	VERSION: 0.1 - 2021.09.18 - Module Created with Create-NewModuleStructure by Lars Panzerbj�rn
#
#	SYNOPSIS:
#
#
#	DESCRIPTION:
#	New PowerShell module
#
#	REQUIREMENTS:
#
#endregion Script Header

#Requires -Version 4.0

[CmdletBinding(PositionalBinding=$false)]
param()

Write-Verbose $PSScriptRoot

#Get Functions and Helpers function definition files.
$Functions	= @( Get-ChildItem -Path $PSScriptRoot\Functions\*.ps1 -ErrorAction SilentlyContinue )
$Helpers = @( Get-ChildItem -Path $PSScriptRoot\Helpers\*.ps1 -ErrorAction SilentlyContinue )

#Dot source the files
ForEach ($Import in @($Functions + $Helpers))
{
	Try
	{
		. $Import.Fullname
	}
	Catch
	{
		Write-Error -Message "Failed to Import function $($Import.Fullname): $_"
	}
}

Export-ModuleMember -Function $Functions.Basename

