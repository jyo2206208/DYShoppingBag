//
//  DYShoppingBagIconView.m
//  DYShoppingBag_Example
//
//  Created by farfetch on 2017/12/7.
//  Copyright © 2017年 jyo2206208. All rights reserved.
//

#import "DYShoppingBagIconView.h"
#import "DYShoppingBagViewController.h"

@interface DYShoppingBagIconView()

@property (nonatomic, strong) UIImageView *imageView;

@end

@implementation DYShoppingBagIconView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:CGRectMake(0, 0, 30, 30)];
    if (self) {
        
        self.countLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 10, 30)];
        [self addSubview:self.countLabel];
        
        self.imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"shoppingBag"]];
        self.imageView.frame = CGRectMake(10, 0, 30, 30);
        [self addSubview:self.imageView];
        
        
        UITapGestureRecognizer *tapGesturRecognizer=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapAction)];
        [self addGestureRecognizer:tapGesturRecognizer];
    }
    return self;
}

- (void)tapAction{
    self.action();
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
