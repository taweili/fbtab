#! /bin/bash

DIRNAME=`dirname $0`
GATEWAY=8.17.80.247
USER=david

if [ -f ${DIRNAME}/.proxy_user ]; then 
    . ${DIRNAME}/.proxy_user
fi

if [ "${PROXY_USER}"x = x ] ; then 
    PROXY_USER=$USER@$GATEWAY
fi

if [ "${PROXY_PORT}"x = x ] ; then 
    PROXY_PORT=4000
fi

ssh -C -v -R$GATEWAY:$PROXY_PORT:127.0.0.1:4000 $PROXY_USER
