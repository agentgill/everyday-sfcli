#!/usr/bin/env bash

sfdx waw:connectedapp:create -n DevHubPoolCert -d "DevHub Pool w/Cert" -c "http://localhost:1717/OauthRedirect" -r -u devhub0;
sfdx force:org:open -u devhub0;