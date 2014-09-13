#!/bin/bash

APPIUM_VERSION="1.2.1"

# check npm command
if !( type npm > /dev/null 2>&1 ) ; then
  echo "npm command not found."
  echo "Please install npm command to install appium."
  exit 1
fi

# confirm iOS dev environment
echo "Confirm xcode environment"
echo `xcode-select -p`

# install appium via npm command
if [ `appium -v` == ${APPIUM_VERSION} ] ; then
  echo "You already install appium@"${APPIUM_VERSION}
else
  echo "You need install appium@"${APPIUM_VERSION}
  npm install -g appium@${APPIUM_VERSION}
  echo "You finish install appium@"${APPIUM_VERSION}
fi

# appium for ios
echo "authorize ios command with appium"
echo `sudo authorize_ios`
appium-doctor --ios
appium-doctor --android

# install ruby gems
bundle install
