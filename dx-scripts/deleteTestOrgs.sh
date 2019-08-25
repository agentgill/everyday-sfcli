#!/usr/bin/env bash

# Get list of Test Orgs & output to txt file
sfdx force:org:list | grep 'TestOrg' > orgnames.txt  

# Load txt file
file="orgnames.txt"

# Loop file lines and build Org array
while IFS= read -r line
do
    echo ${line:0:10}
    orgs+=${line:0:10}
done <"$file"

# Loop orgs array and delete
for org in $orgs
    do  
        echo y | sfdx force:org:delete -u $org
    done

echo All done