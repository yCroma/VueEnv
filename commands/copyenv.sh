#!/bin/bash
. ../.env
docker cp ../.env vue_${APP_NAME}:/usr/src/app/.env