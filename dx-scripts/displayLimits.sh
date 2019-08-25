#!/usr/bin/env bash

# Get list of Test Orgs & output to txt file
sfdx force:org:list | grep 'devhub' > orgnames.txt  

# Load txt file
file="orgnames.txt"

# Loop file lines and build Org array
while IFS= read -r line
do
    #echo ${line:3:13}
    orgs+=${line:3:13}
done <"$file"

# Loop orgs array and delete
for org in $orgs
    do  
        echo "ORG -" $org >> org-limits.txt
        sfdx force:limits:api:display -u $org | grep 'Org' >> org-limits.txt
        
    done

echo All done