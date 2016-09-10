#!/bin/bash

f_ware=${ENV_WARFILE:"jenkins.war"}
d_url=${ENV_DOWNLOADURL:"ERROR"}


if [ "$d_url" = "ERROR" ];then
    echo "[ERROR] - check env";
    exit 1;
fi

mkdir /tomcat
ln -s /var/lib/tomcat7/webapps /tomcat/webapps
cd /tomcat/webapps/

curl $d_url

echo "* After installing WAR, list webapps-dir:"
ls -la /tomcat/webapps/

exit 0;