$PSVersionTable.PSVersion
$strCriticalAssetLocation = "D:\CriticalAssets"
$strCriticalAssetTransferLocation = "D:\CriticalAssetsTransferred"

New-Item -Path $strCriticalAssetLocation  -ItemType directory -Force
New-Item -Path $strCriticalAssetLocation -Name "PrimaryAsset.txt" -ItemType "file" -Value "This is a text file. But this file contains a secret."
New-Item -Path $strCriticalAssetLocation -Name "SecondaryAsset.txt" -ItemType "file"
Copy-Item $strCriticalAssetLocation\PrimaryAsset.txt -Destination $strCriticalAssetLocation\PrimaryAssetRenamed.txt
Copy-Item -Path $strCriticalAssetLocation -Destination $strCriticalAssetTransferLocation -Recurse
Get-ChildItem -Path $strCriticalAssetTransferLocation
$numberofassets = (Get-ChildItem $strCriticalAssetTransferLocation -Recurse | Measure-Object).Count
Write-Output "Number of assets found: " $numberofassets
Write-Host "##vso[task.setvariable variable=bv_numberofassets]"$numberofassets
$numberofassets = (Get-ChildItem "D:\a\1\s" -Recurse | Measure-Object).Count
Write-Host "##vso[task.setvariable variable=ov_numberofassets;isOutput=true]"$numberofassets


#D:\a\1\s\demoangularapp
#Get-Content -Path D:\MyCriticalAssets\PrimaryAsset.txt
#$byteArray = Get-Content -Path D:\MyCriticalAssets\PrimaryAsset.txt -AsByteStream -Raw
#Copy-Item
#$strBaseDirectory = "D:\a\1\s\demoangularapp"
#$strPathToSecret = "\src\criticalassets"
#[CmdletBinding()]
#param (
#    [Parameter()]
#    [TypeName]
#    $ParameterName
#)
#
