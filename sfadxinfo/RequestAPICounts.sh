#!/bin/bash


# echo $TZ
# echo $USERNAME
# echo $CLIENTID
# echo $SFDCLOGINURL
# echo $MAXAPIUSERD
MAXAPIUSERD='32767'
#sfdx force:auth:jwt:grant --clientid 04580y4051234051 \
#--jwtkeyfile ./sfadxinfo.pem --username jdoe@acdxgs0hub.org \
#--setdefaultdevhubusername --setalias sfadxinfo


while true
do
    #value=$(sfdx force:limits:api:display -u jdoe@acdxgs0hub.org| grep DailyApiRequests|awk '{print $2}')
    #used=$(($MAXAPIUSERD-$value))
    date "+%Y/%m/%d %H:%M:%S"
    Unixtime=`date +%s`
    #echo $Unixtime

    uri="http://apatchphp_webapp/register/"
    data={'"key"':"$Unixtime",'"value"':$RANDOM}

    curl  --noproxy "*" -s -L -X POST -H "Content-Type: application/json" -d $data $uri

    sleep 60

done