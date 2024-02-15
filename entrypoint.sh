#!/bin/bash

/app/apphub &
sleep 20
/app/apps/gaganode/gaganode config set --token=$TOKEN &
/app/apphub restart &


exec "$@" 