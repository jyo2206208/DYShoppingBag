//
//  Target_DYShoppingBag.m
//  DYShoppingBag_Example
//
//  Created by farfetch on 2017/12/6.
//  Copyright © 2017年 jyo2206208. All rights reserved.
//

#import "Target_DYShoppingBag.h"
#import "DYShoppingBagViewController.h"

typedef void (^DYCallCenterCallbackBlock)(NSDictionary *info);

@implementation Target_DYShoppingBag

- (UIViewController *)Action_shoppingBagViewController:(NSDictionary *)params {
    return [[DYShoppingBagViewController alloc] init];
}


- (NSString *)Action_shoppingCount:(NSDictionary *)params {
    DYShoppingBagViewController *controller = [[DYShoppingBagViewController alloc] init];
    return [NSString stringWithFormat:@"%lu",(unsigned long)controller.productList.count];
}

- (void)Action_addProductToBag:(NSDictionary *)params {
    //如果使用了rac或者promiskid。这里的异步操作会更优雅
    DYCallCenterCallbackBlock callback = params[@"confirmAction"];
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    NSMutableArray *array = [NSMutableArray arrayWithArray:[userDefaults objectForKey:@"productList"]];
    [array addObject:@0];
    [userDefaults setObject:array forKey:@"productList"];
    
    if (callback) {
        callback(@{@"productCount":@(array.count)});
    }
}

- (UIImage *)Action_bagIcon:(NSDictionary *)params {
    NSBundle *bundle = [NSBundle bundleWithPath:[[NSBundle bundleForClass:[Target_DYShoppingBag class]] pathForResource:@"DYShoppingBag" ofType:@"bundle"]];
    return [[UIImage imageWithContentsOfFile:[bundle pathForResource:@"shoppingBag" ofType:@"png"]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}

@end
