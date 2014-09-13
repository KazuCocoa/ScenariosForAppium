#!/bin/sh

env=$1

# Switch build version product or staging
appium --log-level info --language ja &
sleep 5
LATEST_APPID=$!

if [ "${env}" = "product" ] ; then
  for i in `seq 1 100`
  do
    bundle exec rake spec os=ios scope=ios-sample caps="IOS_CAPS"
    mv report/report.html report/report_$i.html
  done
fi

kill $LATEST_APPID
echo 'finish'
