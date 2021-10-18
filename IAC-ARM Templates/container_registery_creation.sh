#!/bin/bash

if [[ $# -ne 3 ]] ; then
echo "Number of arguments entered : $#"
echo "Please enter the correct number (5) of arguments."
exit 1
fi
echo "Total arguments : $#"

resourceGroup=$1
templateFileName=$2
parameterFileName=$3

 
echo $resourceGroup
echo $templateFileName
echo $parameterFileName

echo "Running Container Registery creation template in resource group " $resourceGroup
az deployment group create --resource-group $resourceGroup --template-file $templateFileName --parameters $parameterFileName
echo "Finsihed running the Container Registery creation template"