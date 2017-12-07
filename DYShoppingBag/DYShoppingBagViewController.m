//
//  DYShoppingBagViewController.m
//  DYShoppingBag_Example
//
//  Created by farfetch on 2017/12/6.
//  Copyright © 2017年 jyo2206208. All rights reserved.
//

#import "DYShoppingBagViewController.h"

@interface DYShoppingBagViewController ()

@property (nonatomic, strong) UILabel *shoppingBagLabel;
@property (nonatomic, strong) UIButton *closeButton;

@end

@implementation DYShoppingBagViewController

- (instancetype)init{
    self = [super init];
    if (self) {
        NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
        [userDefaults setObject:[NSMutableArray arrayWithObjects:@0,@0,@0, nil] forKey:@"productList"];
        self.productList = [self productListFromBackEnd];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.shoppingBagLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 100, 300, 100)];
    self.shoppingBagLabel.text = [NSString stringWithFormat:@"You have %lu products", (unsigned long)self.productList.count];
    [self.view addSubview:self.shoppingBagLabel];
    
    
    self.closeButton = [UIButton buttonWithType:UIButtonTypeSystem];
    self.closeButton.frame = CGRectMake(50, 200, 50, 100);
    [self.closeButton setTitle:@"CLOSE" forState:UIControlStateNormal];
    [self.closeButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [self.closeButton addTarget:self action:@selector(close) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.closeButton];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)close {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (NSArray *)productListFromBackEnd {
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    return [userDefaults objectForKey:@"productList"];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
