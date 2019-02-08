
# rn-custom-airplay

## Getting started

For npm:

`$ npm install rn-custom-airplay --save`

Or for yarn:

`$ yarn add rn-custom-airplay`

### Mostly automatic installation

1. `$ react-native link rn-custom-airplay`
2. If you are using an Objective-C only (Standard), then you must follow [the instructions](#xcode-with-objective-c-only) for those projects.

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `rn-custom-airplay` and add `RNCustomAirplay.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNCustomAirplay.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. If you are using an Objective-C only (Standard), then you must follow [the instructions](#xcode-with-objective-c-only) for those projects.
5. Run your project.


#### Xcode with Objective-C only

1. This package uses Swift and as such requires a manual change to the Xcode Project if, as of Xcode 10.1, your Xcode project has no Swift code and is Objective-C only. If you are already using Swift you may skip this section. 

1. [Update library search paths](https://stackoverflow.com/a/53101587)
    1. Open your target settings and select `Build Settings`.
    2. Make sure the `All` option is selected. Search for `Library Search Paths`.
    3. Add `$(TOOLCHAIN_DIR)/usr/lib/swift/$(PLATFORM_NAME)` to this setting.
    * ![Library search paths example image](https://raw.githubusercontent.com/verypossible/rn-custom-airplay/master/images/library-example.png)
2. [Embed Swift standard libraries](https://stackoverflow.com/a/39558803)
    1. Open your target settings and select `Build Settings`.
    2. Make sure the `All` option is selected. Search for `Embed Swift`.
    3. Set the value to `Yes` for the `Always Embed Swift Standard Libraries` setting.
    * ![Embed Swift example image](https://raw.githubusercontent.com/verypossible/rn-custom-airplay/master/images/embed-swift-example.png)

## Usage
See [Example](https://github.com/verypossible/rn-custom-airplay/blob/master/Example) for more details
```javascript

import { Airplay, AirplayButton, AirplayListener } from "rn-custom-airplay";

constructor(props) {
  super(props)
  this.state = {
    airplayConnected: false,
  };
}

componentDidMount() {
  this.airplayConnected = AirplayListener.addListener("airplayConnected", devices => this.setState({airplayConnected: devices.connected}));
  Airplay.startScan();
}

componentWillUnmount() {
  Airplay.endScan()
  this.airplayConnected.remove();
}

render() {
  return (
    <AirplayButton image={require("./icon.png")} tintColor={this.state.airplayConnected ? "#29dfee" : "#d3d3d3"} style={{marginTop: 100}} />
  );
}
```

