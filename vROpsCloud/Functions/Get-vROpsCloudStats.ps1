Function Get-vROpsCloudStats{
<#
	.SYNOPSIS
		Gets stats for vROps objects..

	.DESCRIPTION
		Gets the access token needed for Graph REST API calls.

	.EXAMPLE
		$RefreshToken = "c123456f-a1cd-6fv7-bh73-123r5t6y7u8i9"
		
		Get-vROpsCloudAccessToken -RefreshToken $RefreshToken

	.EXAMPLE
		$RefreshToken = "c123456f-a1cd-6fv7-bh73-123r5t6y7u8i9"

		$Token = Get-vROpsCloudAccessToken -TenantID $TenantID
		
		This example stores the token in a variable that can be used to grant access.

	.PARAMETER RefreshToken
		This is the Refresh Token of your VMWare Cloud Account that you are using.

	.INPUTS
		Input is from command line or called from a script.

	.OUTPUTS
		This will output an access token that can be used in future API calls.

	.NOTES
		Author:				Lars Panzerbjørn
		Creation Date:		2021.09.19
		
		This token is also stored in the Script scope, and so is automagically available to other functions.
#>

}