#!/bin/bash

WDIR_ROOT=${ENV_WORKING_DIR:-"/work"}
TDIR="${ENV_APPLICATION_DIR:-"/app"}"
PRJ=${ENV_PROJECT_NAME:-"docker-registry-ui"}
REPO=${ENV_GIT_REPOSITORY:-"atc-/docker-registry-ui"}
WDIR="${WDIR_ROOT}/${PRJ}"
URL=${ENV_GIT_SERVER:-"https://github.com"}

mkdir -p ${WDIR}
cd ${WDIR}
git clone ${URL}/${REPO}

