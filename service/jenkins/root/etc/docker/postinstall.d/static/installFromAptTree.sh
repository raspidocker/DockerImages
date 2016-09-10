#!/bin/bash

jenkins_version=${ENV_JENKINS_VERSION:-"ERROR"}
d_url=http://mirrors.jenkins-ci.org/war/${jenkins_version}/jenkins.war

if [ ! -e /app ]; then
    mkdir /app/home
    chmod -R 777 /app
fi

if [ "$jenkins_version" = "ERROR" ];then
    echo "[ERROR] - Jenkinsversion is not set";
    exit 1;
else
    cd /app
    echo "* Downloading $d_url"
    curl -OL $d_url

    if [ -f "/jenkins.war" ]; then
        mv /jenkins.war /app/
    fi
fi

exit 0;