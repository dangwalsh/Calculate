//
//  BackButton.m
//  Calculate
//
//  Created by Daniel Walsh on 1/17/13.
//  Copyright (c) 2013 Daniel Walsh. All rights reserved.
//

#import "BackButton.h"
#import <QuartzCore/QuartzCore.h>

@implementation BackButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.buttonColor = [UIColor blueColor];
        self.backgroundColor = self.buttonColor;
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        self.layer.borderColor = [[UIColor colorWithRed:0.3 green:0.3 blue:0.7 alpha:1.0] CGColor];
        self.material.colors = [NSArray arrayWithObjects:(id)[[UIColor colorWithRed:0.5 green:0.7 blue:1.0 alpha:1.0] CGColor], (id)[[UIColor colorWithRed:0.2 green:0.3 blue:1.0 alpha:1.0] CGColor], nil];
        self.transform = CGAffineTransformMakeScale(-1.0, 1.0);
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{

}
*/

@end
