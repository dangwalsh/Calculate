//
//  NumberButton.m
//  Calculate
//
//  Created by Daniel Walsh on 1/10/13.
//  Copyright (c) 2013 Daniel Walsh. All rights reserved.
//

#import "NumberButton.h"
#import <QuartzCore/QuartzCore.h>

@implementation NumberButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {

    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        self.layer.borderColor = [[UIColor colorWithRed:0.5 green:0.5 blue:0.5 alpha:1.0] CGColor];
        self.material.colors = [NSArray arrayWithObjects:(id)[[UIColor colorWithRed:0.8 green:0.8 blue:0.8 alpha:1.0] CGColor], (id)[[UIColor colorWithRed:0.5 green:0.5 blue:0.5 alpha:1.0] CGColor], nil];
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
