#!/bin/sh

env=$1

# don.t start run test until finish checking test env.
function yes_or_no_select()
{
  PS3="Do you finish change setting of 'iOS Simulator -> Hardware -> Keyboard -> Connect Hardware Keyboard' ?"
  while true;do
    echo "Type 1 or 2."
    select answer in yes no;do
      case $answer in
        yes)
          echo "Ok, let's progress !\n"
          return true
          ;;
        no)
          echo "Please change setting or finish script with ctl+c.\n"
          ;;
        *)
          echo "Please change setting or finish script with ctl+c.\n"
          ;;
      esac
    done
  done
}

function func_run ()
{
  appium --log-level warn --tmp `pwd`/tmp  &
  sleep 10
  LATEST_APPID=$!

  $1

  kill $LATEST_APPID
  sleep 5
  rm -rf `pwd`/tmp
  sleep 5
}

# to confirm missing changing settings
yes_or_no_select

# Switch build version product or staging
if [ "${env}" = "product" ] ; then
  func_run "bundle exec rake spec os=ios scope=ios-sample env=product caps=IOS_CAPS"
elif [ "${env}" = "staging" ] ; then
  func_run "bundle exec rake spec os=ios scope=ios-sample env=staging caps=IOS_CAPS"
else
  echo "Please specify environment product or staging."
fi
