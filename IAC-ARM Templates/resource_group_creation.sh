#!/bin/bash
if [[ $# -ne 1 ]] ; then
echo "Number of arguments entered : $#"
echo "Please enter the correct number (1) of arguments."
exit 1
fi
echo "Total arguments : $#"

location=$1

 
echo $location

echo "Running Resource Group Creation Template ........"
az deployment sub create --location $location --template-file resource_group_template_file.json --parameters resource_group_parameters_file.json
echo "Finished Running Resource Group Creation Template"