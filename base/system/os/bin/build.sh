#!/bin/bash
######
echo -e "\n\n+++ DOCKER BUILD +++\n\n";
ARG=$1;
ABS_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/$(basename "${BASH_SOURCE[0]}")"
DIR_BIN=$(dirname $ABS_PATH);
DIR_PRJ=$(dirname ${DIR_BIN});
######
source ${DIR_BIN}/libs/global.lib.sh
F_ENV="${DIR_BIN}/env.properties";
source ${F_ENV}
######
if [ "$ARG" = "push" ]; then
	out "Pushing: ${IMG_REPO_NAME}/${IMG_NAME}:${IMG_VERSION}"
	cmd="docker push ${IMG_REPO_NAME}/${IMG_NAME}:${IMG_VERSION}"
elif [ "$ARG" = "pull" ]; then
        out "Pulling: ${IMG_REPO_NAME}/${IMG_NAME}:${IMG_VERSION}"
        cmd="docker pull ${IMG_REPO_NAME}/${IMG_NAME}:${IMG_VERSION}"
else
	out "From: ${DIR_PRJ} - Build: ${IMG_REPO_NAME}/${IMG_NAME}:${IMG_VERSION}"
	#read
	cmd="docker build --tag=\"${IMG_REPO_NAME}/${IMG_NAME}:${IMG_VERSION}\" ${DIR_PRJ}"
fi
docmd "$cmd"
out "Finished do Build: ${IMG_REPO_NAME}/${IMG_NAME}:${IMG_VERSION}"
######