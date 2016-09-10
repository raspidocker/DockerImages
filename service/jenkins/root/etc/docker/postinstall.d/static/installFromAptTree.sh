#!/bin/bash

jenkins_version=${ENV_JENKINS_VERSION:-"ERROR"}
d_url=http://mirrors.jenkins-ci.org/war/${jenkins_version}/jenkins.war

if [ ! -e /tomcat/webapps ]; then
    mkdir /tomcat
    chmod 777 /tomcat
    ln -s /var/lib/tomcat7/webapps /tomcat/webapps
fi
cd /tomcat/webapps/

if [ "$jenkins_version" = "ERROR" ];then
    echo "[ERROR] - Jenkinsversion is not set";
    exit 1;
else
    echo "* Downloading $d_url"
    curl -OL $d_url

    echo "* After installing WAR, list webapps-dir:"
    ls -la /tomcat/webapps/
fi

exit 0;