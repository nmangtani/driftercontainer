[CmdletBinding()]
param (
    [Parameter(Mandatory)]
    $numberofassets
)
Write-Output "Reporting Critical Assets"
for($i=0; $i -le $numberofassets-1; $i++)
{
  Write-Output "Printing secret # " $i
}
$strCriticalAssetTransferLocation = "D:\CriticalAssetsTransferred"
Get-ChildItem -Path $strCriticalAssetTransferLocation

