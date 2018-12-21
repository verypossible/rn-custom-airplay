import React, { Component } from "react";
import {
  NativeEventEmitter,
  NativeModules,
  requireNativeComponent
} from "react-native";

const { RNCustomAirplay } = NativeModules;
export const Airplay = RNCustomAirplay;
export const AirplayButton = requireNativeComponent("RNCustomAirplayButton", null);
export const AirplayListener = new NativeEventEmitter(RNCustomAirplay);
