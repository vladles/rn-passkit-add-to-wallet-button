import React from "react";
import { NativeModules, requireNativeComponent } from "react-native";

const { PassKitAddToWalletButtonPasses } = NativeModules;
const PassKitAddToWalletButton = requireNativeComponent(
  "PassKitAddToWalletButton"
);

export const AddPassButton = () => {
  const { ADD_PASS_BUTTON_HEIGHT, ADD_PASS_BUTTON_WIDTH } =
    PassKitAddToWalletButtonPasses?.getConstants();

  const onPressHandler = () => {
    console.log("pressed on button");
    return;
  };

  if (PassKitAddToWalletButton === undefined) return;

  return (
    <PassKitAddToWalletButton
      styles={{
        width: ADD_PASS_BUTTON_WIDTH || "100%",
        height: ADD_PASS_BUTTON_HEIGHT || "40",
      }}
      onPress={onPressHandler}
    />
  );
};
