#!/bin/sh

device=$1
env=$2

# you should use Xcode 6 to build.
IOS_SDK="iphonesimulator8.1"
DESTINATION="platform=iOS Simulator,name=iPhone 6,OS=8.1"

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
