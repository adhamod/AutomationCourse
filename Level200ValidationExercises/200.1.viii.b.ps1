$subid = "7e5e5a70-ae36-48e2-8847-698f22209035" 
$location = "West US" 
$newrgname = "testing"

Add-AzureRmAccount 
Get-AzureRmSubscription -SubscriptionId $subid  | Set-AzureRmContext 
New-AzureRmResourceGroup -Name $newrgname -Location $location


Test-AzureRmResourceGroupDeployment -ResourceGroupName testing -TemplateFile "C:\Users\andhamod\OneDrive - Microsoft\Qual Lab\Qual Lab 200 Solutions\Validation Phase\Template1.json" -Verbose