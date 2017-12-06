//
//  DYViewController.m
//  DYShoppingBag
//
//  Created by jyo2206208 on 12/06/2017.
//  Copyright (c) 2017 jyo2206208. All rights reserved.
//

#import "DYViewController.h"
#import "DYShoppingBagViewController.h"

@interface DYViewController ()

@end

@implementation DYViewController

- (IBAction)presentNewController:(id)sender {
    DYShoppingBagViewController *shoppingBagViewController = [[DYShoppingBagViewController alloc] init];
    [self presentViewController:shoppingBagViewController animated:YES completion:nil];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
