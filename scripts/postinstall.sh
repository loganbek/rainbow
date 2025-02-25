#!/bin/bash
set -eo pipefail

# Detect the platform.
PLATFORM=$(uname -s)

# Specify the required global NPM packages.
GLOBAL_NPM_SCRIPTS=( "patch-package" "rn-nodeify" )
GLOBAL_NPM_MISSING=()

# # For each package, add it to the GLOBAL_NPM_MISSING array if it is not globally
# # available using the canonical cross-platform method.
# for script in ${GLOBAL_NPM_SCRIPTS[@]}
# do
#   if [ ! -x "$(command -v $script)" ]; then
#     GLOBAL_NPM_MISSING+=($script)
#   fi
# done

# If there are missing global NPM packages, install them.
if [ ${#GLOBAL_NPM_MISSING[@]} -gt 0 ]
then
  echo ""
  echo "Some global NPM packages are required. Installing:"
  echo "${GLOBAL_NPM_MISSING[@]}"
  echo ""
  yarn global add ${GLOBAL_NPM_MISSING[@]}
fi

# Set up the environment.
if [ -e .env ]; then

  # For MacOS, copy xconfig files.
  if [ $PLATFORM == "Darwin" ]; then
    cat .env | grep "BRANCH" | sed 's/=/ = /g' > ./ios/debug.xcconfig
    cat .env | grep "BRANCH" | sed 's/=/ = /g' > ./ios/release.xcconfig
    cat .env | grep "BRANCH" | sed 's/=/ = /g' > ./ios/localrelease.xcconfig
    cat .env | grep "BRANCH" | sed 's/=/ = /g' > ./ios/staging.xcconfig
  # cat .env | grep "BRANCH" | sed 's/=/ = /g' > ./ios/debug.xcconfig
  # cat .env | grep "BRANCH" | sed 's/=/ = /g' > ./ios/release.xcconfig
  # cat .env | grep "BRANCH" | sed 's/=/ = /g' > ./ios/localrelease.xcconfig
  # cat .env | grep "BRANCH" | sed 's/=/ = /g' > ./ios/staging.xcconfig

  # check BRANCH config
  # echo ".env BRANCH -> config"
  
  # cat .env | grep "CODEPUSH" | sed 's/=/ = /g' >> ./ios/debug.xcconfig
  # cat .env | grep "CODEPUSH" | sed 's/=/ = /g' >> ./ios/release.xcconfig
  # cat .env | grep "CODEPUSH" | sed 's/=/ = /g' >> ./ios/localrelease.xcconfig
  # cat .env | grep "CODEPUSH" | sed 's/=/ = /g' >> ./ios/staging.xcconfig

  # # check CODEPUSH config
  # echo ".env CODEPUSH -> config"

  # cat .env | grep "GOOGLE" | sed 's/=/ = /g' >> ./ios/debug.xcconfig
  # cat .env | grep "GOOGLE" | sed 's/=/ = /g' >> ./ios/release.xcconfig
  # cat .env | grep "GOOGLE" | sed 's/=/ = /g' >> ./ios/localrelease.xcconfig
  # cat .env | grep "GOOGLE" | sed 's/=/ = /g' >> ./ios/staging.xcconfig

  # check GOOGLE config
  # echo ".env GOOGLE -> config"

  echo "✅ .xcconfig files created"

    cat .env | grep "GOOGLE" | sed 's/=/ = /g' >> ./ios/debug.xcconfig
    cat .env | grep "GOOGLE" | sed 's/=/ = /g' >> ./ios/release.xcconfig
    cat .env | grep "GOOGLE" | sed 's/=/ = /g' >> ./ios/localrelease.xcconfig
    cat .env | grep "GOOGLE" | sed 's/=/ = /g' >> ./ios/staging.xcconfig

    echo "✅ .xcconfig files created"
  fi

  # Export Android env vars for all platforms.
  source .env
  echo "✅ Android ENV vars exported"

else
  echo "⚠️ .env file missing!! ⚠️"
  echo "Please make sure the file exists and it's located in the root of the project"
fi

if [ -n "$RAINBOW_SCRIPTS_APP_IOS_PREBUILD_HOOK" ]; then
  eval $RAINBOW_SCRIPTS_APP_IOS_PREBUILD_HOOK;
  echo "✅ executed ios prebuild hook"
fi

if [ -n "$RAINBOW_SCRIPTS_APP_ANDROID_PREBUILD_HOOK" ]; then
  eval $RAINBOW_SCRIPTS_APP_ANDROID_PREBUILD_HOOK;
  echo "✅ executed android prebuild hook"
fi

# Ignore any potential tracked changes to mutable development files.
git update-index --assume-unchanged "ios/Internals/ios/Internals.h"
git update-index --assume-unchanged "ios/Internals/ios/Internals.m"
git update-index --assume-unchanged "ios/Internals/ios/Internals.swift"
git update-index --assume-unchanged "ios/Internals/ios/Internals-Bridging-Header.h"
git update-index --assume-unchanged "ios/Extras.json"
git update-index --assume-unchanged "android/app/src/main/res/raw/extras.json"
git update-index --assume-unchanged "android/app/src/main/java/me/rainbow/NativeModules/Internals/InternalModule.java"
git update-index --assume-unchanged "android/app/src/main/java/me/rainbow/MainActivity.java"


# Specifying ONLY the node packages that we need to install via browserify
# (because those aren't available in react native) and some of our deps require
# them. If we don't specify which packages, rn-nodeify  will look into each
# package.json and install everything including a bunch devDeps that we don't
# need like "console"
rn-nodeify --install --hack 'crypto,buffer,react-native-randombytes,vm,stream,http,https,os,url,net,fs,process'
echo "✅ rn-nodeify packages hacked succesfully"

# Apply patches.
patch-package
echo "✅ All patches applied"

# Create a debug file from the default if one does not exist.
DEBUGFILE=src/config/debug.js

if test -f "$DEBUGFILE"; then
    echo "$DEBUGFILE exists."
else
    echo "$DEBUGFILE does not exist. You use default debug settings."
    cp src/config/defaultDebug.js $DEBUGFILE
fi

# Remove the incomplete installation of sentry-cli from node_modules
rm -rf node_modules/.bin/sentry-cli

if [ ! -x "$(command -v sentry-cli)" ]; then
  echo "Installing sentry-cli..."
  case $PLATFORM in
    # Mac + Linux environments can use Sentry's automatic install script.
    Darwin | Linux)
      curl -sL https://sentry.io/get-cli/ | bash
      ;;
  esac
else
  which sentry-cli
  sentry-cli --version
  echo "sentry-cli is already installed. Skipping"
fi
