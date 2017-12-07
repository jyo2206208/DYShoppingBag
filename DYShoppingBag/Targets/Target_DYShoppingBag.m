//
//  Target_DYShoppingBag.m
//  DYShoppingBag_Example
//
//  Created by farfetch on 2017/12/6.
//  Copyright © 2017年 jyo2206208. All rights reserved.
//

#import "Target_DYShoppingBag.h"
#import "DYShoppingBagViewController.h"
#import "DYShoppingBagIconView.h"

typedef void (^DYCallCenterCallbackBlock)(NSDictionary *info);

@implementation Target_DYShoppingBag

- (UIViewController *)Action_shoppingBagViewController:(NSDictionary *)params{
    return [[DYShoppingBagViewController alloc] init];
}

- (void)Action_addProductToBag:(NSDictionary *)params{
    //如果使用了rac或者promiskid。这里的异步操作会更优雅
    DYCallCenterCallbackBlock callback = params[@"confirmAction"];
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    NSMutableArray *array = [userDefaults objectForKey:@"productList"];
    [array addObject:@0];
    
    if (callback) {
        callback(@{@"productCount":@(array.count)});
    }
}

- (UIView *)Action_bagIcon:(NSDictionary *)params{
    return [[DYShoppingBagIconView alloc] init];
}

@end
