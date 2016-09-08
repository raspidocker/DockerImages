#!/bin/bash

WDIR=${ENV_DIR_WEBDAV:-"/var/webdav"}
if [ ! -d ${WDIR} ]; then
	echo -e "Directory '${WDIR}' not exists - set to '/var/dockernodes/webdav'!"
	WDIR="/var/dockernodes/webdav"
fi

if [ ! -d ${WDIR} ]; then
	echo -e "Directory '${WDIR}' not exists!"
	exit 1;
fi

chown -R www-data:www-data ${WDIR}
find ${WDIR} -name ".*" -exec rm -vf {} \;

exit 0;