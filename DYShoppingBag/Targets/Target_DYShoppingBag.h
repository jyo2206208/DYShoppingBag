//
//  Target_DYShoppingBag.h
//  DYShoppingBag_Example
//
//  Created by farfetch on 2017/12/6.
//  Copyright © 2017年 jyo2206208. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Target_DYShoppingBag : NSObject

- (UIViewController *)Action_shoppingBagViewController:(NSDictionary *)params;
- (void)Action_addProductToBag:(NSDictionary *)params;

@end
