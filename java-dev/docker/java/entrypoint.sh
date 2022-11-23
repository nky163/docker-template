#!/bin/bash
usermod -u $HOST_UID -o $CONTAINER_USER
groupmod -g $HOST_GID -o $CONTAINER_GROUP
tail -f /dev/null