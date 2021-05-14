![](https://pbs.twimg.com/profile_banners/1103191459409420288/1573207178/1500x500)

### 🌈️ Rainbow

> the Ethereum wallet that lives in your pocket!

📲️ [Available on the iOS App Store.](https://apps.apple.com/us/app/rainbow-ethereum-wallet/id1457119021)

🐦️ [Follow us on Twitter](https://twitter.com/rainbowdotme)

## Requirements

- A computer running macOS.
- NVM installed or Node.js 14: https://github.com/creationix/nvm
- Install CocoaPods by running `sudo gem install cocoapods`
- Install Watchman `brew install watchman`
- Install the latest version of XCode: https://developer.apple.com/xcode/

## How to run the project

If you are new to React Native, this is a helpful introduction: https://facebook.github.io/react-native/docs/getting-started.html

1. Clone the GitHub repository to your machine.

2. Run `nvm use 14` to use set the version of node for this project.

3. Set up your .env file, use our env.example as a guide.

   **_Note that some features are currently not accessible, we are working with our Data Providers in order to provide open source API Keys!_**

   Here are some resources to generate your own API keys:

   - Etherscan: https://etherscan.io/apis
   - Infura: https://infura.io/
   - ETH Gas Station: https://docs.ethgasstation.info/
   - Imgix: https://www.imgix.com/

4. Run `yarn setup` to get all of the packages required.

5. Run `yarn install-bundle`.

6. Install required Pods by running `yarn install-pods`.

7. Run `yarn start` to start the React Native Bundler.

8. Open `rainbow-wallet/ios/Rainbow.xcworkspace` in XCode.

9. Run the project by clicking the play button.

## CodePush

In order to use code push you must be logged into the correct Microsoft App Center account.

### Prerequisites

```
npm install -g code-push
code-push login
```

At this point you will be required to log into the account tied to the code push public keys in Info.plist

### Deployment

```
code-push release-react RainbowWallet-iOS ios -d <DEPLOYMENT>
```

The deployment can either be `Staging` or `Production` depending on the mode of the application you wish to update was built in through XCode.

### Local Builds

In order to build the application in "release" mode but not use the code push distribution you must build the application using the scheme `LocalRelease`.

Building the application with the `Staging` scheme or `Release` scheme will result in your bundle being replaced by the live code push deployment on resume of the application.

# React Native

<https://reactnative.dev/>

# About NFT's

<https://eips.ethereum.org/EIPS/eip-721>

<https://ethereum.org/en/developers/docs/standards/tokens/erc-721/>

## NFT Video Player Options

**React Native Video**

- <https://www.npmjs.com/package/react-native-video>

- <https://github.com/react-native-video/react-native-video>

- <https://npm.runkit.com/react-native-video-player>

`npm install --save react-native-video`
`yarn add react-native-video`

**React Native Video Player**

- <https://www.npmjs.com/package/react-native-video-player>

- <https://github.com/cornedor/react-native-video-player>

Tutorial

- <https://betterprogramming.pub/add-video-to-your-react-native-app-using-react-native-video-f020e90059de>

`npm install --save react-native-video-player react-native-video react-native-vector-icons`
`yarn add react-native-video-player react-native-video react-native-vector-icons`

## NFT to Instagram

**React Native Instagram Share + Story**

<https://www.npmjs.com/package/react-native-instagram-share>

<https://github.com/watzak/react-native-instagram-share>

`npm install react-native-instagram-share@latest --save`

In XCode, in the project navigator, right click Libraries ➜ Add Files to [your project's name]
Go to node_modules ➜ react-native-instagram-share and add RNInstagramShare.xcodeproj
In XCode, in the project navigator, select your project. Add `libRNInstagramShare.a` to your project's Build Phases ➜ Link Binary With Libraries
Click `RNInstagramShare.xcodeproj` in the project navigator and go the Build Settings tab. Make sure 'All' is toggled on (instead of 'Basic'). Look for Header Search Paths and make sure it contains both `$(SRCROOT)/../../react-native/React` and `$(SRCROOT)/../../../React` - mark both as recursive.
Run your project (Cmd+R)

**React Native Share Instagram Story**

<https://www.npmjs.com/package/react-native-share-instagram-story>

<https://github.com/appchoose/react-native-share-instagram-story>

`npm install react-native-share-instagram-story`

## NFT to Airplay

** React Native Airplay Button iOS **

<https://www.npmjs.com/package/react-native-airplay-ios>
`https://github.com/gazedash/react-native-airplay-ios`

<https://www.npmjs.com/package/react-native-airplay-btn>
`https://github.com/disjfa/react-native-airplay-btn`

<https://github.com/wanaya/react-native-airplay>
`npm i react-native-airplay --save`

<https://github.com/mantaskaveckas/rn-airplay>
`yarn add rn-airplay`

# ERROR 5/9/21

Showing All Errors Only
CompileSwiftSources normal x86_64 com.apple.xcode.tools.swift.compiler (in target 'lottie-react-native' from project 'Pods')
cd /Users/loganbek/rainbow/ios/Pods
export DEVELOPER_DIR\=/Applications/Xcode.app/Contents/Developer
export SDKROOT\=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator14.5.sdk
/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swiftc -incremental -module-name lottie_react_native -Onone -enable-batch-mode -enforce-exclusivity\=checked @/Users/loganbek/Library/Developer/Xcode/DerivedData/Rainbow-fricdyxqaydrdueqmollfodcckrr/Build/Intermediates.noindex/Pods.build/Debug-iphonesimulator/lottie-react-native.build/Objects-normal/x86_64/lottie-react-native.SwiftFileList -DDEBUG -D COCOAPODS -Xcc -fmodule-map-file\=/Users/loganbek/Library/Developer/Xcode/DerivedData/Rainbow-fricdyxqaydrdueqmollfodcckrr/Build/Products/Debug-iphonesimulator/lottie-ios/Lottie.modulemap -Xcc -fmodule-map-file\=/Users/loganbek/rainbow/ios/Pods/Headers/Public/React/React-Core.modulemap -Xcc -fmodule-map-file\=/Users/loganbek/rainbow/ios/Pods/Headers/Public/yoga/Yoga.modulemap -import-underlying-module -Xcc -fmodule-map-file\=/Users/loganbek/rainbow/ios/Pods/Headers/Public/lottie_react_native/lottie-react-native.modulemap -sdk /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator14.5.sdk -target x86_64-apple-ios9.0-simulator -g -module-cache-path /Users/loganbek/Library/Developer/Xcode/DerivedData/ModuleCache.noindex -Xfrontend -serialize-debugging-options -enable-testing -index-store-path /Users/loganbek/Library/Developer/Xcode/DerivedData/Rainbow-fricdyxqaydrdueqmollfodcckrr/Index/DataStore -swift-version 5 -I /Users/loganbek/Library/Developer/Xcode/DerivedData/Rainbow-fricdyxqaydrdueqmollfodcckrr/Build/Products/Debug-iphonesimulator/lottie-react-native -I /Users/loganbek/Library/Developer/Xcode/DerivedData/Rainbow-fricdyxqaydrdueqmollfodcckrr/Build/Products/Debug-iphonesimulator/lottie-ios -F /Users/loganbek/Library/Developer/Xcode/DerivedData/Rainbow-fricdyxqaydrdueqmollfodcckrr/Build/Products/Debug-iphonesimulator/lottie-react-native -c -j16 -output-file-map /Users/loganbek/Library/Developer/Xcode/DerivedData/Rainbow-fricdyxqaydrdueqmollfodcckrr/Build/Intermediates.noindex/Pods.build/Debug-iphonesimulator/lottie-react-native.build/Objects-normal/x86_64/lottie-react-native-OutputFileMap.json -parseable-output -serialize-diagnostics -emit-dependencies -emit-module -emit-module-path /Users/loganbek/Library/Developer/Xcode/DerivedData/Rainbow-fricdyxqaydrdueqmollfodcckrr/Build/Intermediates.noindex/Pods.build/Debug-iphonesimulator/lottie-react-native.build/Objects-normal/x86_64/lottie_react_native.swiftmodule -Xcc -I/Users/loganbek/Library/Developer/Xcode/DerivedData/Rainbow-fricdyxqaydrdueqmollfodcckrr/Build/Intermediates.noindex/Pods.build/Debug-iphonesimulator/lottie-react-native.build/swift-overrides.hmap -Xcc -iquote -Xcc /Users/loganbek/Library/Developer/Xcode/DerivedData/Rainbow-fricdyxqaydrdueqmollfodcckrr/Build/Intermediates.noindex/Pods.build/Debug-iphonesimulator/lottie-react-native.build/lottie-react-native-generated-files.hmap -Xcc -I/Users/loganbek/Library/Developer/Xcode/DerivedData/Rainbow-fricdyxqaydrdueqmollfodcckrr/Build/Intermediates.noindex/Pods.build/Debug-iphonesimulator/lottie-react-native.build/lottie-react-native-own-target-headers.hmap -Xcc -I/Users/loganbek/Library/Developer/Xcode/DerivedData/Rainbow-fricdyxqaydrdueqmollfodcckrr/Build/Intermediates.noindex/Pods.build/Debug-iphonesimulator/lottie-react-native.build/lottie-react-native-all-non-framework-target-headers.hmap -Xcc -ivfsoverlay -Xcc /Users/loganbek/Library/Developer/Xcode/DerivedData/Rainbow-fricdyxqaydrdueqmollfodcckrr/Build/Intermediates.noindex/Pods.build/Debug-iphonesimulator/lottie-react-native.build/all-product-headers.yaml -Xcc -iquote -Xcc /Users/loganbek/Library/Developer/Xcode/DerivedData/Rainbow-fricdyxqaydrdueqmollfodcckrr/Build/Intermediates.noindex/Pods.build/Debug-iphonesimulator/lottie-react-native.build/lottie-react-native-project-headers.hmap -Xcc -I/Users/loganbek/Library/Developer/Xcode/DerivedData/Rainbow-fricdyxqaydrdueqmollfodcckrr/Build/Products/Debug-iphonesimulator/lottie-react-native/include -Xcc -I/Users/loganbek/rainbow/ios/Pods/Headers/Private -Xcc -I/Users/loganbek/rainbow/ios/Pods/Headers/Private/lottie-react-native -Xcc -I/Users/loganbek/rainbow/ios/Pods/Headers/Public -Xcc -I/Users/loganbek/rainbow/ios/Pods/Headers/Public/DoubleConversion -Xcc -I/Users/loganbek/rainbow/ios/Pods/Headers/Public/FBLazyVector -Xcc -I/Users/loganbek/rainbow/ios/Pods/Headers/Public/FBReactNativeSpec -Xcc -I/Users/loganbek/rainbow/ios/Pods/Headers/Public/RCTRequired -Xcc -I/Users/loganbek/rainbow/ios/Pods/Headers/Public/RCTTypeSafety -Xcc -I/Users/loganbek/rainbow/ios/Pods/Headers/Public/React-Core -Xcc -I/Users/loganbek/rainbow/ios/Pods/Headers/Public/React-RCTText -Xcc -I/Users/loganbek/rainbow/ios/Pods/Headers/Public/React-callinvoker -Xcc -I/Users/loganbek/rainbow/ios/Pods/Headers/Public/React-cxxreact -Xcc -I/Users/loganbek/rainbow/ios/Pods/Headers/Public/React-jsi -Xcc -I/Users/loganbek/rainbow/ios/Pods/Headers/Public/React-jsiexecutor -Xcc -I/Users/loganbek/rainbow/ios/Pods/Headers/Public/React-jsinspector -Xcc -I/Users/loganbek/rainbow/ios/Pods/Headers/Public/ReactCommon -Xcc -I/Users/loganbek/rainbow/ios/Pods/Headers/Public/Yoga -Xcc -I/Users/loganbek/rainbow/ios/Pods/Headers/Public/glog -Xcc -I/Users/loganbek/Library/Developer/Xcode/DerivedData/Rainbow-fricdyxqaydrdueqmollfodcckrr/Build/Intermediates.noindex/Pods.build/Debug-iphonesimulator/lottie-react-native.build/DerivedSources-normal/x86_64 -Xcc -I/Users/loganbek/Library/Developer/Xcode/DerivedData/Rainbow-fricdyxqaydrdueqmollfodcckrr/Build/Intermediates.noindex/Pods.build/Debug-iphonesimulator/lottie-react-native.build/DerivedSources/x86_64 -Xcc -I/Users/loganbek/Library/Developer/Xcode/DerivedData/Rainbow-fricdyxqaydrdueqmollfodcckrr/Build/Intermediates.noindex/Pods.build/Debug-iphonesimulator/lottie-react-native.build/DerivedSources -Xcc -DPOD_CONFIGURATION_DEBUG\=1 -Xcc -DDEBUG\=1 -Xcc -DCOCOAPODS\=1 -emit-objc-header -emit-objc-header-path /Users/loganbek/Library/Developer/Xcode/DerivedData/Rainbow-fricdyxqaydrdueqmollfodcckrr/Build/Intermediates.noindex/Pods.build/Debug-iphonesimulator/lottie-react-native.build/Objects-normal/x86_64/lottie_react_native-Swift.h -working-directory /Users/loganbek/rainbow/ios/Pods

<unknown>:0: error: unable to execute command: Abort trap: 6
<unknown>:0: error: merge-module command failed due to signal 6 (use -v to see invocation)

may need to switch build setting

This morning, after upgrading to XCode 12.5, I received this error too.
I already had lottie-react-native installed, but the following worked for me.

My solution was to run yarn add lottie-react-native, then move in ios folder and run pod install

<https://github.com/lottie-react-native/lottie-react-native/issues/755>

ld: 144 duplicate symbols for architecture x86_64
clang: error: linker command failed with exit code 1 (use -v to see invocation)

https://stackoverflow.com/questions/24298144/duplicate-symbols-for-architecture-x86-64-under-xcode

pod deintegrate
pod install
