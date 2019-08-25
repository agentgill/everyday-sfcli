#!/usr/bin/env bash

sfdx devhubpool:org:create -p devhub0,devhub1,devhub2,devhub3,devhub4 -f project-scratch-def.json -a TestOrg1 -d 2
sfdx devhubpool:org:create -p devhub0,devhub1,devhub2,devhub3,devhub4 -f project-scratch-def.json -a TestOrg2 -d 2
sfdx devhubpool:org:create -p devhub0,devhub1,devhub2,devhub3,devhub4 -f project-scratch-def.json -a TestOrg3 -d 2
sfdx devhubpool:org:create -p devhub0,devhub1,devhub2,devhub3,devhub4 -f project-scratch-def.json -a TestOrg4 -d 2
sfdx devhubpool:org:create -p devhub0,devhub1,devhub2,devhub3,devhub4 -f project-scratch-def.json -a TestOrg5 -d 2
sfdx devhubpool:org:create -p devhub0,devhub1,devhub2,devhub3,devhub4 -f project-scratch-def.json -a TestOrg6 -d 2

