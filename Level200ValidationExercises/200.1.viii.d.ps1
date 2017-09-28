$resourceGroupName = "TroubleshootingRG"
# Uncomment to create the resource group if it does not already exist
$location = "westus"
New-AzureRmResourceGroup -ResourceGroupName $resourceGroupName -Location $location

$templateFileURI = "https://raw.githubusercontent.com/boklyn/ARMQualLab/master/200/Template1.json"
$parameters = @{}

#changethe typo from "Standrd_GRS" to "Standard_GRS"
$parameters.Add("storageAccountType","Standard_GRS")
Test-AzureRmResourceGroupDeployment -ResourceGroupName testing -TemplateUri $templateFileURI -TemplateParameterObject $parameters -Verbose
