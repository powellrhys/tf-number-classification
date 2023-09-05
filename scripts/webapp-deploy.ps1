param (
    [Parameter(Mandatory, HelpMessage = "Azure Subscription Name")]
    [string]$Subscription,
    [Parameter(Mandatory, HelpMessage = "Azure Resource Group Name")]
    [string]$ResourceGroup,
    [Parameter(Mandatory, HelpMessage = "Azure Web App Name")]
    [string]$AppName,
    [Parameter(Mandatory, HelpMessage = "Azure Web App Name")]
    [string]$ImageName
)

$AppServicePlanName = 'WebApps'

az group create -l westeurope -n $ResourceGroup

az appservice plan create -g $ResourceGroup -n $AppServicePlanName --sku F1 --is-linux

az webapp create -g $ResourceGroup -p $AppServicePlanName -n $AppName -i nginx

az webapp config appsettings set -n $AppName -g $ResourceGroup  --subscription $Subscription --settings WEBSITES_PORT=8501 PORT=8501 DOCKER_REGISTRY_SERVER_URL=https://index.docker.io/v1

az webapp config container set -n $AppName -g $ResourceGroup --subscription $Subscription --docker-custom-image-name $ImageName
