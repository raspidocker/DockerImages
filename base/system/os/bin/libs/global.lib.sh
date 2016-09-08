function out {
	echo -e "[${DOCKER_HOST}] - ${1}";
}
#
function out_weiter {
	echo -e "${1}\n***  [ weiter - RETURN ]  ***";
	read
	exec ${1};
}
#
function docmd {
	echo -e "[${DOCKER_HOST}] ${1}";
	${1}
}

function out_cl {
	echo -e "${1}";
}

function printEnv {
    echo -e "*** Zum RUN-Zeitpunkt gibt es folgende Variablen: ***";
    echo -e "IMG_NAME=${IMG_NAME}";
    echo -e "IMG_VERSION=${IMG_VERSION}";
    echo -e "IMG_REPO_NAME=${IMG_REPO_NAME}";
    echo -e "IMG_DOCKER_DEPENDS=${IMG_DOCKER_DEPENDS}";
    echo -e "IMG_VOLUME_NODES=${IMG_VOLUME_NODES}";
    echo -e "CON_NAME=${CON_NAME}";
    echo -e "CON_HOSTNAME=${CON_HOSTNAME}";
    echo -e "CON_DSND=${CON_DSND}";
    echo -e "CON_PORT_INT=${CON_PORT_INT}";
    echo -e "CON_PORT_EXT=${CON_PORT_EXT}";
    echo -e "CON_VOLUME_DATA=${CON_VOLUME_DATA}";
    echo -e "CON_VOLUME_LOGS=${CON_VOLUME_LOGS}";
    echo -e "ARGS: [ ${*} ]";
}

function dockerlogo {
	ABS_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/$(basename "${BASH_SOURCE[0]}")"
	cat $(dirname $ABS_PATH)/banner.inc
}