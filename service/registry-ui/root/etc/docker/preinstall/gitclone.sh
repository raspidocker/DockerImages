#!/bin/bash

WDIR_ROOT=${ENV_WORKDIR:="/src"}
PRJ=${ENV_PROJECT:="docker-registry-ui"}
REPO=${ENV_GIT_REPOSITORY:="atc-/docker-registry-ui"}
WDIR="${WDIR_ROOT}/${PRJ}"

mkdir -p ${WDIR}
cd ${WDIR}
git clone ${REPO}