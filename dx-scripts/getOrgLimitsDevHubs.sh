#!/usr/bin/env bash

# todo: implement org loop

read -p "Enter filter " filter1
echo "Your filter is:" $filter1

rm org-limits.txt
echo "ORG - devhub0" $'\r\r' >> org-limits.txt
sfdx force:limits:api:display -u devhub0 | grep $filter1 >> org-limits.txt

echo $'\r\r' >> org-limits.txt

echo "ORG - devhub1" $'\r\r' >> org-limits.txt
sfdx force:limits:api:display -u devhub1 | grep $filter1  >> org-limits.txt

echo $'\r\r' >> org-limits.txt

echo "ORG - devhub2" $'\r\r' >> org-limits.txt
sfdx force:limits:api:display -u devhub2 | grep $filter1  >> org-limits.txt

echo $'\r\r' >> org-limits.txt

echo "ORG - devhub3" $'\r\r' >> org-limits.txt
sfdx force:limits:api:display -u devhub3 | grep $filter1  >> org-limits.txt

cat org-limits.txt