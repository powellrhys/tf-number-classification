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

az webapp config container set -n $AppName -g $ResourceGroup  --subscription $Subscription --docker-custom-image-name $ImageName

az webapp config appsettings set -n $AppName -g $ResourceGroup  --subscription $Subscription --settings WEBSITES_PORT=8501 PORT=8501