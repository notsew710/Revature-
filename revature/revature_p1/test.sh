#!/bin/bash

gitrepo=<https://github.com/notsew710/Revature-/tree/master/revature/revature_p1>
token=<5d8be8d47e5ce8dc7297dc3870f0d94293bac16c>
webappname=images$RANDOM

# Create a resource group.
az group create --location southcentalus --name myGroup

# Create an App Service plan in `FREE` tier.
az appservice plan create --name $webappname --resource-group myGroup --sku FREE

# Create a web app.
az webapp create --name $webappname --resource-group myGroup --plan $webappname

# Configure continuous deployment from GitHub. 
# --git-token parameter is required only once per Azure account (Azure remembers token).
az webapp deployment source config --name $webappname --resource-group myGroup \
--repo-url $gitrepo --branch master --git-token $token

# Copy the result of the following command into a browser to see the web app.
echo http://$webappname.azurewebsites.net
