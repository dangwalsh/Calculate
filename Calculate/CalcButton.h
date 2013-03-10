//
//  CalcButton.h
//  Buttons
//
//  Created by Daniel Walsh on 1/7/13.
//  Copyright (c) 2013 Daniel Walsh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface CalcButton : UIButton

- (void) fingerDown;
- (void) fingerUp;

@property (nonatomic, assign)CAGradientLayer *material;
@property (nonatomic, assign)UIColor *buttonColor;
@property (nonatomic, assign)float corner;

@end
