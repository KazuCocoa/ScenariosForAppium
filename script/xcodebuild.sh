#!/bin/sh

device=$1
env=$2

# you should use Xcode 6 to build it.
if [ "${device}" = "iphone" ] ; then
  echo "iPhone build"

  IOS_SDK="iphonesimulator7.1"
  DESTINATION="platform=iOS Simulator,name=iPhone Retina (4-inch),OS=7.1"
#  IOS_SDK="iphonesimulator8.0"
#  DESTINATION="platform=iOS Simulator,name=iPhone 5s,OS=8.0"
elif [ "${device}" = "ipad" ] ; then
  echo "iPhone build"

  IOS_SDK="iphonesimulator7.1"
  DESTINATION="platform=iOS Simulator,name=iPad Retina,OS=7.1"
#  IOS_SDK="iphonesimulator8.0"
#  DESTINATION="platform=iOS Simulator,name=iPad Retina,OS=8.0"
else
  echo "Enter option 'iphone' or 'ipad' to select build scheme as 1st arg."
  exit 0
fi

CURRENT_DIR=`pwd`

WORKSPACE='your workspace'
WORKSPACE_PROJECT="${WORKSPACE}/sample.xcworkspace"
OUTPUT_PATH="`pwd`/${device}-build/"

# clean
if [ -e "./${device}-build" ];then
  rm -rf "./${device}-build.back"
  mv "./${device}-build" "./${device}-build.back"
fi

# run pod install
#cd $WORKSPACE
#pod install
#cd $CURRENT_DIR


# xcodebuild
xcodebuild \
  -workspace "$WORKSPACE_PROJECT" \
  -scheme "$SCHEME" \
  -sdk "$IOS_SDK" \
  -destination "$DESTINATION" \
  -configuration "$CONFIG" \
  SYMROOT="$OUTPUT_PATH" \
  DSTROOT="$OUTPUT_PATH" \
  clean build
