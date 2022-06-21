#!/bin/bash


sushi  -s -o .

if [[ $? -eq 0 ]]
then

echo "Creating Profiles and extensions summary pages..."
../scripts/makeProfilesAndExtensions.js cs-structuredpathology
echo

echo "Making terminology summary"   # will copy into IG input folder
../scripts/makeTerminologySummary.js cs-structuredpathology

echo "Not doing anything else right now"

else 
echo
echo
echo "There were errors, so the other scripts weren't run..."
fi

