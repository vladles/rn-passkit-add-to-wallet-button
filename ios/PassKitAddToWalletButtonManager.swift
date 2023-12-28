//
//  PassKitAddToWalletButtonManager.swift
//  CharityRxApp
//
//  Created by Vladislav Lesovskiy on 28.12.2023.
//

import Foundation

@objc (PassKitAddToWalletButtonManager)
class PassKitAddToWalletButtonManager : RCTViewManager {
  override func view() -> UIView! {
    return PassKitAddToWalletButton()
  }
  
  override static func requiresMainQueueSetup() -> Bool {
    return true
  }
}
