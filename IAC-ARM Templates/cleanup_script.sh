#!/bin/bash

if [[ $# -ne 1 ]] ; then
echo "Number of arguments entered : $#"
echo "Please enter the correct number (1) of arguments."
exit 1
fi
echo "Total arguments : $#"

resourceGroup=$1

echo $resourceGroup

az group delete --name $resourceGroup

echo "Resource Group Deleted Successfully"