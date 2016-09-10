#!/bin/bash

jenkins_version=${ENV_JENKINS_VERSION:-"ERROR"}
d_url=http://mirrors.jenkins-ci.org/war/${jenkins_version}/jenkins.war

if [ ! -e /app ]; then
    mkdir /app
    chmod 777 /app
fi

if [ "$jenkins_version" = "ERROR" ];then
    echo "[ERROR] - Jenkinsversion is not set";
    exit 1;
else
    echo "* Downloading $d_url"
    curl -OL $d_url
fi

exit 0;