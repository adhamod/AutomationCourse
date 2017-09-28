$resourceGroupName = "TroubleshootingRG"

# Uncomment to create the resource group if it does not already exist
#$location = "westus"
#New-AzureRmResourceGroup -ResourceGroupName $resourceGroupName -Location $location

$templateFileURI = "https://github.com/adhamod/AutomationCourse/blob/master/Level200ValidationExercises/Template3.json"
$parameters = @{}

$parameters.Add("storageAccountType","Standard_GRS")
$parameters.Add("storageAccountName", "armquallabteststorageacct")
Test-AzureRmResourceGroupDeployment -ResourceGroupName testing -TemplateUri $templateFileURI -TemplateParameterObject $parameters -Verbose
$testResults= Test-AzureRmResourceGroupDeployment -ResourceGroupName testing -TemplateUri $templateFileURI -TemplateParameterObject $parameters -Verbose
Write-Host 
Write-Host "Test Results" -ForegroundColor Green -NoNewline
$testResults
Write-Host "Checking Details..." -ForegroundColor Green
$testResults.Details
Write-Host "Checking more Details..." -ForegroundColor Green
$testResults.Details.Details

