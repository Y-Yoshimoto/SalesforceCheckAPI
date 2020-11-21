#!/bin/bash

# sfdx force:auth:web:login -r https://test.salesforce.com -a sand1

#sfdx force:auth:jwt:grant --clientid 04580y4051234051 \
#--jwtkeyfile ./sfadxinfo.pem --username jdoe@acdxgs0hub.org \
#--setdefaultdevhubusername --setalias my-sfa-org

# echo $TZ
# echo $USERNAME
# echo $CLIENTID
# echo $SFDCLOGINURL

while true
do
    #sfdx force:limits:api:display -u sandbox
    date "+%Y/%m/%d %H:%M:%S"
    Unixtime=`date +%s`
    echo $Unixtime

    uri="http://apatchphp_webapp/register/"
    data={'"key"':"$Unixtime",'"value"':$RANDOM}

    curl -L -X POST -H "Content-Type: application/json" -d $data $uri

    sleep 5

done