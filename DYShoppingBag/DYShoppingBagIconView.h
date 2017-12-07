//
//  DYShoppingBagIconView.h
//  DYShoppingBag_Example
//
//  Created by farfetch on 2017/12/7.
//  Copyright © 2017年 jyo2206208. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^ActionBlock)(void);
@interface DYShoppingBagIconView : UIView

@property (nonatomic, strong) UILabel *countLabel;
@property (nonatomic, copy) ActionBlock action;

@end
