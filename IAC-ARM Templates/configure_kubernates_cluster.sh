#!/bin/bash

if [[ $# -ne 3 ]] ; then
echo "Number of arguments entered : $#"
echo "Please enter the correct number (3) of arguments."
exit 1
fi
echo "Total arguments : $#"

resourceGroup=$1
containerRegistery=$2
kubernatesCluster=$3

echo $resourceGroup
echo $containerRegistery
echo $kubernatesCluster

ACR_ID=$(az acr show --name $containerRegistery --resource-group $resourceGroup --query "id" --output tsv)
CLIENT_ID=$(az aks show -g $resourceGroup -n $kubernatesCluster --query identityProfile.kubeletidentity.clientId -o tsv)
az role assignment create --assignee $CLIENT_ID --role acrpull --scope $ACR_ID

echo "Finshed configuring the AKS Cluster"
