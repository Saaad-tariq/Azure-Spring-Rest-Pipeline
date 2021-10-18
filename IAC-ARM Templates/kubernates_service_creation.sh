#!/bin/bash

if [[ $# -ne 1 ]] ; then
echo "Number of arguments entered : $#"
echo "Please enter the correct number (1) of arguments."
exit 1
fi
echo "Total arguments : $#"

resourceGroup=$1

echo $resourceGroup

echo "Running Kubernates Service creation template in resource group " ${resourceGroup}
az deployment group create --resource-group $resourceGroup --template-file kubernates_service_template_file.json --parameters kubernates_service_parameters_file.json
echo "Finsihed running the Kubernates Service creation template"