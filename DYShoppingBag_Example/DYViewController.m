//
//  DYViewController.m
//  DYShoppingBag
//
//  Created by jyo2206208 on 12/06/2017.
//  Copyright (c) 2017 jyo2206208. All rights reserved.
//

#import "DYViewController.h"
#import "Target_DYShoppingBag.h"

@interface DYViewController ()

@property (nonatomic, strong) Target_DYShoppingBag *target;


@end

@implementation DYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.target = [[Target_DYShoppingBag alloc] init];
    
    UIBarButtonItem *rightBarButtonItemIcon = [[UIBarButtonItem alloc] initWithImage:[self.target Action_bagIcon:nil] style:UIBarButtonItemStyleDone target:self action:@selector(presentBagController)];
    UIBarButtonItem *rightBarButtonItemCount = [[UIBarButtonItem alloc] initWithTitle:[self.target Action_shoppingCount:nil] style:UIBarButtonItemStyleDone target:self action:@selector(presentBagController)];
    
    self.navigationItem.rightBarButtonItems = @[rightBarButtonItemIcon,rightBarButtonItemCount];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void) presentBagController {
    [self presentViewController:[self.target Action_shoppingBagViewController:nil] animated:YES completion:nil];
}

@end
