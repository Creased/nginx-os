#!/bin/bash

set -e

: ${APP_NAME:=nginx-os}

: ${APP_CONTAINERIZED:=-containerized}
: ${APP_RUN_ARGS:=}

: ${APP_VCPUS:=2}
: ${APP_MEM:=4096}
: ${APP_DISK:=8G}

: ${APP_NETWORKING:=default}
: ${APP_PORT:=80}

exec linuxkit run ${APP_RUN_ARGS} ${APP_CONTAINERIZED} \
                  -networking ${APP_NETWORKING} \
                  -publish ${APP_PORT}:80/tcp \
                  -cpus ${APP_VCPUS} \
                  -mem ${APP_MEM} \
                  -disk size=${APP_DISK} \
                  ${APP_NAME}

