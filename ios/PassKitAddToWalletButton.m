//
//  PassKitAddToWalletButton.m
//  CharityRxApp
//
//  Created by Vladislav Lesovskiy on 28.12.2023.
//

#import <Foundation/Foundation.h>

#import "React/RCTViewManager.h"
#import <React/RCTBridgeModule.h>


@interface RCT_EXTERN_MODULE(PassKitAddToWalletButtonManager, RCTViewManager)

RCT_EXPORT_VIEW_PROPERTY(onPress, RCTBubblingEventBlock)

@end
