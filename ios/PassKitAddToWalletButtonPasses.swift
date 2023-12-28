//
//  PassKitWalletAddToButtonPasses.swift
//  CharityRxApp
//
//  Created by Vladislav Lesovskiy on 28.12.2023.
//

import Foundation
import PassKit

@objc(PassKitAddToWalletButtonPasses)
class PassKitAddToWalletButtonPasses: NSObject {
  
  @objc
  func constantsToExport() -> [AnyHashable : Any]! {
    let passButton = PKAddPassButton(addPassButtonStyle: PKAddPassButtonStyle.black)
        
    return [
      "ADD_PASS_BUTTON_WIDTH":CGRectGetWidth(passButton.frame),
      "ADD_PASS_BUTTON_HEIGHT":CGRectGetHeight(passButton.frame)
    ];
  }
  
  @objc
  static func requiresMainQueueSetup() -> Bool {
      return true
  }
}
