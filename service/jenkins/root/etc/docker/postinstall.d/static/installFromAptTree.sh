#!/bin/bash

jenkins_version=${ENV_JENKINS_VERSION:-"ERROR"}
d_url=ttp://mirrors.jenkins-ci.org/war/${jenkins_version}/jenkins.war


if [ "$jenkins_version" = "ERROR" ];then
    echo "[ERROR] - Jenkinsversion is not set";
    exit 1;
fi

mkdir /tomcat
ln -s /var/lib/tomcat7/webapps /tomcat/webapps
cd /tomcat/webapps/

curl $d_url

echo "* After installing WAR, list webapps-dir:"
ls -la /tomcat/webapps/

exit 0;