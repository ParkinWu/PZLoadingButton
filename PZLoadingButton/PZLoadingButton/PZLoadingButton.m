//
//  PZLoadingButton.m
//  PZLoadingButton
//
//  Created by parkin on 15/4/14.
//  Copyright (c) 2015年 parkin. All rights reserved.
//

#import "PZLoadingButton.h"
#define K_Indecator_Width 25
@interface PZLoadingButton()
@property (nonatomic, strong) UIActivityIndicatorView * indecator;
@end
@implementation PZLoadingButton
- (void)startLoading {
    self.titleLabel.alpha = 0;
    [self.indecator startAnimating];
}
- (void)stopLoading {
    self.titleLabel.alpha = 1;
    [self.indecator stopAnimating];
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self commentInit];
        [self setupConstrains];
    }
    return self;
}
- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self commentInit];
        [self setupConstrains];
        
    }
    return self;
}
- (instancetype)init
{
    self = [super init];
    if (self) {
//        NSLog(@"asdfasdfaf");
        [self commentInit];
        [self setupConstrains];

    }
    return self;
}
    - (void)commentInit {
        self.indecator.hidden = YES;
        self.indecator.userInteractionEnabled = NO;
        self.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
        self.contentHorizontalAlignment =UIControlContentHorizontalAlignmentCenter;
    }
- (UIActivityIndicatorView *)indecator {
    if (_indecator == nil) {
        self.indecator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
        [self addSubview:_indecator];
        self.indecator.translatesAutoresizingMaskIntoConstraints = NO;
    }
    return _indecator;
}
    - (void)setupConstrains {
        
        //X方向居中
        [self addConstraint:[NSLayoutConstraint constraintWithItem:self.indecator attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterX multiplier:1 constant:0]];
        //Y方向居中
        [self addConstraint:[NSLayoutConstraint constraintWithItem:self.indecator attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterY multiplier:1 constant:0]];
        //宽25
        [self addConstraint:[NSLayoutConstraint constraintWithItem:self.indecator attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:0 multiplier:1 constant:25]];
        //高25
        [self addConstraint:[NSLayoutConstraint constraintWithItem:self.indecator attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:0 multiplier:1 constant:25]];
    }
@end
