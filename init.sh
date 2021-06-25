#!/bin/sh

if [ -f .env ]; then
    export $(egrep -v '^#' .env | xargs)
else
    echo ".env do not exist, please cp .env.example .env first"
    exit 1
fi

# Clone projects
git clone --branch $KERNEL_GIT_DEV_BASE_BRANCH $KERNEL_GIT_REPO ../acme_kernel
git clone --branch $BACKEND_GIT_DEV_BASE_BRANCH $BACKEND_GIT_REPO ../acme_backend
git clone --branch $API_GIT_DEV_BASE_BRANCH $API_GIT_REPO ../acme_api