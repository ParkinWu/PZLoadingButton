//
//  UIView+PZAppearance.m
//  PZLoadingButton
//
//  Created by parkin on 15/4/14.
//  Copyright (c) 2015年 parkin. All rights reserved.
//

#import "UIView+PZAppearance.h"

@implementation UIView(PZAppearance)
- (void)setCornerWithRadius:(CGFloat)radius {
    self.layer.cornerRadius = radius;
    self.layer.masksToBounds = YES;
}

@end
