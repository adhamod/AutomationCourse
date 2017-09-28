$subid = "7e5e5a70-ae36-48e2-8847-698f22209035" 
$location = "West US" 
$newrgname = "finalvalidation"

Add-AzureRmAccount 
Get-AzureRmSubscription -SubscriptionId $subid  | Set-AzureRmContext 
New-AzureRmResourceGroup -Name $newrgname -Location $location

New-AzureRmResourceGroupDeployment -ResourceGroupName finalvalidation -TemplateFile "C:\Users\andhamod\OneDrive - Microsoft\Qual Lab\Qual Lab 200 Solutions\Validation Phase\FinalValidation.b.json"-Verbose
Write-Host 
Write-Host "Test Results" -ForegroundColor Green -NoNewline
$testResults
Write-Host "Checking Details..." -ForegroundColor Green
$testResults.Details
Write-Host "Checking more Details..." -ForegroundColor Green
$testResults.Details.Details
