$subid = "subscriptionid" 
$location = "West US" 
$newrgname = "RG Name"

Add-AzureRmAccount 
Get-AzureRmSubscription -SubscriptionId $subid  | Set-AzureRmContext 
New-AzureRmResourceGroup -Name $newrgname -Location $location

New-AzureRmResourceGroupDeployment -ResourceGroupName RGName -TemplateFile "Insert FinalValidationFile"-Verbose
Write-Host 
Write-Host "Test Results" -ForegroundColor Green -NoNewline
$testResults
Write-Host "Checking Details..." -ForegroundColor Green
$testResults.Details
Write-Host "Checking more Details..." -ForegroundColor Green
$testResults.Details.Details
