//
//  ClearButton.m
//  Calculate
//
//  Created by Daniel Walsh on 1/17/13.
//  Copyright (c) 2013 Daniel Walsh. All rights reserved.
//

#import "ClearButton.h"
#import <QuartzCore/QuartzCore.h>

@implementation ClearButton
/*
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {

    }
    return self;
}
*/
- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        self.buttonColor = [UIColor redColor];
        self.backgroundColor = self.buttonColor;
        self.layer.borderColor = [[UIColor colorWithRed:0.7 green:0.3 blue:0.3 alpha:1.0] CGColor];
        //self.material.colors = [NSArray arrayWithObjects:(id)[[UIColor colorWithRed:1.0 green:0.6 blue:0.6 alpha:1.0] CGColor], (id)[[UIColor colorWithRed:1.0 green:0.2 blue:0.2 alpha:1.0] CGColor], nil];
    }
    return self;
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
