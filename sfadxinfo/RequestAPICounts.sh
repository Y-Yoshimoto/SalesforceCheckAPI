#!/bin/bash

echo $CLIENTID
echo $USERNAME
echo $JWTKEYFILE

sfdx force:auth:jwt:grant --clientid $CLIENTID \
--jwtkeyfile $JWTKEYFILE --username $USERNAME \
--setdefaultdevhubusername --setalias sfadxinfo

while true
do
    limitsDisplay=$(sfdx force:limits:api:display -u sfadxinfo)
    ## DailyApiRequests
    DailyApiRequestsRemaining=$(echo "$limitsDisplay"| grep DailyApiRequests| awk '{print $2}')
    DailyApiRequestsMaximum=$(echo "$limitsDisplay"| grep DailyApiRequests| awk '{print $3}')
    DailyApiRequestsUsed=$(($DailyApiRequestsMaximum-$DailyApiRequestsRemaining))

    echo $DailyApiRequestsRemaining
    echo $DailyApiRequestsMaximum
    echo $DailyApiRequestsUsed

    date "+%Y/%m/%d %H:%M:%S"
    Unixtime=`date +%s`
    #echo $Unixtime

    uri="http://apatchphp_webapp/register/"
    data={'"key"':"$Unixtime",'"value"':$DailyApiRequestsUsed}

    curl  --noproxy "*" -s -L -X POST -H "Content-Type: application/json" -d $data $uri

    sleep 300

done