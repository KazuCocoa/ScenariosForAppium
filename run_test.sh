#!/bin/sh

env=$1

# Switch build version product or staging
if [ "${env}" = "product" ] ; then
  appium --log-level info --language ja &
  sleep 5
  LATEST_APPID=$!

  bundle exec rake spec os=ios scope=ios-sample caps="IOS_CAPS"

  kill $LATEST_APPID

  # if you would like to continue other scenarios, I recommend to start Appium again and do bundle exec.

else
  echo "Please specify environment product or staging."
fi

