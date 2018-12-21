/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 * @flow
 */

import React, { Component } from "react";
import { Button, requireNativeComponent, View } from "react-native";
import { Airplay, AirplayButton, AirplayListener } from "rn-custom-airplay";

type Props = {};
export default class App extends Component<Props> {
  constructor(props) {
    super(props)
    this.state = {
      airplayConnected: false,
    };
  }

  componentDidMount() {
    this.airplayConnected = AirplayListener.addListener("airplayConnected", devices => this.setState({airplayConnected: devices.connected}, () => console.log(devices.connected)));
    Airplay.startScan();
  }

  componentWillUnmount() {
    Airplay.endScan()
    this.airplayConnected.remove();
  }

  render() {
    return (
      <AirplayButton tintColor={this.state.airplayConnected ? "#29dfee" : "#d3d3d3"} style={{marginTop: 100}} />
    );
  }
}
