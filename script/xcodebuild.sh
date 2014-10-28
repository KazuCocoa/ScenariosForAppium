#!/bin/sh

device=$1
env=$2

# you should use Xcode 6 to build.
if [ "${device}" = "iphone" ] ; then
  echo "iPhone build"

  IOS_SDK="iphonesimulator8.1"
  DESTINATION="platform=iOS Simulator,name=iPhone 6,OS=8.1"
elif [ "${device}" = "ipad" ] ; then
  echo "iPhone build"

  IOS_SDK="iphonesimulator8.1"
  DESTINATION="platform=iOS Simulator,name=iPad Retina,OS=8.1"
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
