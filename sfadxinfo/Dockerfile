# build
FROM salesforce/salesforcedx
# https://hub.docker.com/r/salesforce/salesforcedx
LABEL  maintainer "y.yoshimoto"
RUN sfdx force:project:create -n sfadxinfo --template standard
WORKDIR /sfadxinfo

COPY ./* /sfadxinfo/

#ENTRYPOINT [ "tail", "-f", "/dev/null" ]
ENTRYPOINT [ "/bin/bash", "./RequestAPICounts.sh" ]