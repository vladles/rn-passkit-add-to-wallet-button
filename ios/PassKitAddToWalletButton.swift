//
//  PassKitAddToWalletButton.swift
//  CharityRxApp
//
//  Created by Vladislav Lesovskiy on 28.12.2023.
//

import Foundation
import UIKit
import PassKit

class PassKitAddToWalletButton: UIView {
    
  @objc var onPress: RCTBubblingEventBlock?
  
  override init(frame: CGRect) {
    super.init(frame: frame)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func didSetProps(_ changedProps: [String]!) {
    self.setNeedsLayout()
  }
  
  override func layoutSubviews() {
    super.layoutSubviews()
    
    renderButton()
  }
  
  private func renderButton(){
    for child in subviews {
      child.removeFromSuperview()
    }
    
    let passButton = PKAddPassButton(addPassButtonStyle: PKAddPassButtonStyle.black)
    
    passButton.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    passButton.frame = bounds
    passButton.addTarget(self, action: #selector(self.onPassButtonPress), for: .touchUpInside)
    
    self.addSubview(passButton)
  }
  
  @objc private func onPassButtonPress(){
    onPress?([:])
  }
}
