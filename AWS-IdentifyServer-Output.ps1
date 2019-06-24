#Param (
    #[string]$instanceID
#)

Set-AWSCredentials default
Set-DefaultAWSRegion us-gov-west-1

$destPath =  (Get-SSMParameter -Name /PowerShell/IdentifyServer/varDest).value
$compname = (Get-SSMParameter -Name /PowerShell/IdentifyServer/varCompName).value
$OutputContent =  (Get-SSMParameter -Name /PowerShell/IdentifyServer/OutputContent).value
$compname2 = (get-childitem $compname).value
New-Item $destPath -type file -force 
Add-Content $destPath $OutputContent`$compname2