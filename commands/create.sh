#!/bin/ash
. ../.env
cd ..
npm init -y
vue create ${APP_NAME}
exit