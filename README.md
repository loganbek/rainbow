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

### NFT Video Player Options

**React Native Video Player**

- <https://www.npmjs.com/package/react-native-video-player>
- <https://github.com/cornedor/react-native-video-player>

`npm install --save react-native-video-player react-native-video react-native-vector-icons`
`yarn add react-native-video-player react-native-video react-native-vector-icons`

**React Native Video**

- <https://www.npmjs.com/package/react-native-video>
- <https://github.com/react-native-video/react-native-video>

`npm install --save react-native-video`
`yarn add react-native-video`

### NFT to Instagram

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


### NFT to Airplay

** React Native Airplay Button iOS **

<https://www.npmjs.com/package/react-native-airplay-ios>
`https://github.com/gazedash/react-native-airplay-ios`

<https://www.npmjs.com/package/react-native-airplay-btn>
`https://github.com/disjfa/react-native-airplay-btn`

<https://github.com/wanaya/react-native-airplay>
`npm i react-native-airplay --save`

<https://github.com/mantaskaveckas/rn-airplay>
`yarn add rn-airplay`
