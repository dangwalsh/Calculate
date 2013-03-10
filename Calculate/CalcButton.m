//
//  CalcButton.m
//  Buttons
//
//  Created by Daniel Walsh on 1/7/13.
//  Copyright (c) 2013 Daniel Walsh. All rights reserved.
//

#import "CalcButton.h"

@implementation CalcButton
/*
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.layer.cornerRadius = 6.0f;
        
        self.layer.borderWidth = 0.5f;
        self.layer.borderColor = [[UIColor grayColor] CGColor];
        
        self.layer.shadowRadius = 1.0;
        self.layer.shadowColor = [UIColor blackColor].CGColor;
        self.layer.shadowOpacity = 0.5f;
        self.layer.shadowOffset = CGSizeMake(0.0f, 1.0f);
        
        [self addTarget:self action:@selector(fingerDown) forControlEvents:UIControlEventTouchDown];
        [self addTarget:self action:@selector(fingerUp) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}
*/
- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        
        self.buttonColor = [UIColor whiteColor];
        self.backgroundColor = self.buttonColor;
        self.layer.cornerRadius = 6.0f;
        
        self.layer.borderWidth = 0.5f;
        self.layer.borderColor = [[UIColor colorWithRed:0.7 green:0.7 blue:0.7 alpha:1.0] CGColor];
        
        self.layer.shadowRadius = 1.0;
        self.layer.shadowColor = [UIColor blackColor].CGColor;
        self.layer.shadowOpacity = 0.5f;
        self.layer.shadowOffset = CGSizeMake(0.0f, 1.0f);
         
        //self.material = [CAGradientLayer layer];
        //self.material.frame = self.bounds;
        //self.material.colors = [NSArray arrayWithObjects:(id)[[UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0] CGColor], (id)[[UIColor colorWithRed:0.8 green:0.8 blue:0.8 alpha:1.0] CGColor], nil];
        //self.material.cornerRadius = 6.0f;
        
        //[self.layer insertSublayer:self.material atIndex:0];
         
        [self addTarget:self action:@selector(fingerDown) forControlEvents:UIControlEventTouchDown];
        [self addTarget:self action:@selector(fingerUp) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}

- (void) fingerDown
{
    self.backgroundColor = [UIColor blueColor];
    self.layer.shadowOffset = CGSizeMake(0.0f, 0.0f);
}

- (void)fingerUp
{
    self.backgroundColor = self.buttonColor;
    self.layer.shadowOffset = CGSizeMake(0.0f, 1.25f);
    
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
