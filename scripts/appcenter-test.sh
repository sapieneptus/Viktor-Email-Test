#!/usr/bin/env bash

set -ex

xcrun xcodebuild build-for-testing -configuration Debug -workspace ViktorEmailTestObjc.xcworkspace -sdk iphoneos -scheme ViktorEmailTestObjc -derivedDataPath DerivedData

appcenter test run xcuitest --app "Viktor-Email-Test-Org/Email-Test" --devices 3a20c614 --test-series "master" --locale "en_US" --build-dir ./DerivedData/Build/Products/Debug-iphoneos
