//
//  ViewController.m
//  PZLoadingButton
//
//  Created by parkin on 15/4/14.
//  Copyright (c) 2015年 parkin. All rights reserved.
//

#import "ViewController.h"
#import "PZLoadingButton.h"
#import "UIView+PZAppearance.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet PZLoadingButton *nibButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //storyboard创建button， 使用autolayout
    [self.nibButton setCornerWithRadius:4];
    
    //使用代码创建button, 不使用autolayout
    PZLoadingButton * codeButton = [PZLoadingButton buttonWithType:UIButtonTypeCustom];
    codeButton.frame = CGRectMake(50, 100, 80, 40);
    codeButton.center = CGPointMake(self.view.center.x, self.view.center.y - 60);
    codeButton.backgroundColor = [UIColor redColor];
    [codeButton setTitle:@"Click Me" forState:UIControlStateNormal];
    [codeButton addTarget:self action:@selector(beginLoading:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:codeButton];
    [codeButton setCornerWithRadius:4];
}

- (IBAction)beginLoading:(id)sender {
    
    PZLoadingButton * button = (PZLoadingButton *)sender;
    button.selected = !button.selected;
    if (button.selected == YES) {
        [button startLoading];
    } else {
        [button stopLoading];
    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
