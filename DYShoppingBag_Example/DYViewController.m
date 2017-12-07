//
//  DYViewController.m
//  DYShoppingBag
//
//  Created by jyo2206208 on 12/06/2017.
//  Copyright (c) 2017 jyo2206208. All rights reserved.
//

#import "DYViewController.h"
#import "DYShoppingBagViewController.h"
#import "DYShoppingBagIconView.h"

@interface DYViewController ()



@end

@implementation DYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    DYShoppingBagViewController *shoppingBagViewController = [[DYShoppingBagViewController alloc] init];
    
    
    DYShoppingBagIconView *icon = [[DYShoppingBagIconView alloc] init];
    icon.countLabel.text = [NSString stringWithFormat:@"%lu",(unsigned long)shoppingBagViewController.productList.count];
    __weak typeof (self) weakSelf = self;
    icon.action = ^{
        [weakSelf presentViewController:shoppingBagViewController animated:YES completion:nil];
    };
    UIBarButtonItem *rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:icon];
    
    self.navigationItem.rightBarButtonItem = rightBarButtonItem;
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
