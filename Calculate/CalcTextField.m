//
//  CalcTextField.m
//  Buttons
//
//  Created by Daniel Walsh on 1/7/13.
//  Copyright (c) 2013 Daniel Walsh. All rights reserved.
//

#import "CalcTextField.h"
#import <QuartzCore/QuartzCore.h>

@implementation CalcTextField

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.layer.borderWidth = 1.0f;
        self.layer.borderColor = [[UIColor whiteColor] CGColor];
        self.layer.cornerRadius = 10.0f;
        
        self.layer.shadowOffset = CGSizeMake(0.0f, 1.25f);
        self.layer.shadowColor = [[UIColor blackColor] CGColor];
        self.layer.shadowOpacity = 1.0f;
        self.layer.shadowRadius = 1.5f;
        
        self.userInteractionEnabled = NO;
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        //self.layer.backgroundColor = [[UIColor whiteColor] CGColor];
        self.layer.borderWidth = 0.5f;
        self.layer.borderColor = [[UIColor colorWithRed:0.5 green:0.5 blue:0.5 alpha:1.0] CGColor];
        self.layer.cornerRadius = 10.0f;
        
        self.layer.shadowOffset = CGSizeMake(0.0f, 1.5f);
        self.layer.shadowColor = [[UIColor blackColor] CGColor];
        self.layer.shadowOpacity = 1.0f;
        self.layer.shadowRadius = 1.25f;
        
        self.userInteractionEnabled = NO;
    }
    return self;
}

- (CGRect)textRectForBounds:(CGRect)bounds
{
    CGRect inset = CGRectMake(bounds.origin.x +10, bounds.origin.y, bounds.size.width - 10, bounds.size.height);
    return inset;
}

- (CGRect)editingRectForBounds:(CGRect)bounds
{
    CGRect inset = CGRectMake(bounds.origin.x +10, bounds.origin.y, bounds.size.width - 10, bounds.size.height);
    return inset;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
