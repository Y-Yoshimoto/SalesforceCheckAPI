# build
FROM salesforce/salesforcedx
# https://hub.docker.com/r/salesforce/salesforcedx
LABEL  maintainer "y.yoshimoto"
COPY ./RequestAPICounts.sh /
COPY ./sfadxinfo.pem /

#ENTRYPOINT [ "tail", "-f", "/dev/null" ]
ENTRYPOINT [ "/bin/bash", "./RequestAPICounts.sh" ]