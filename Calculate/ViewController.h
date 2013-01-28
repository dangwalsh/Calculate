//
//  ViewController.h
//  Calculate
//
//  Created by Daniel Walsh on 11/27/12.
//  Copyright (c) 2012 Daniel Walsh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import "calculate.h"

@interface ViewController : UIViewController {
    NSString *string;
    NSNumberFormatter *numberFormatter;
    //UIButton *btnPlus;
    CALayer *layer;
}

@property (nonatomic, assign)CAGradientLayer *material;
@property (nonatomic, retain)IBOutlet UITextField *screen;

- (IBAction)one:(id)sender;
- (IBAction)two:(id)sender;
- (IBAction)three:(id)sender;
- (IBAction)four:(id)sender;
- (IBAction)five:(id)sender;
- (IBAction)six:(id)sender;
- (IBAction)seven:(id)sender;
- (IBAction)eight:(id)sender;
- (IBAction)nine:(id)sender;
- (IBAction)zero:(id)sender;
- (IBAction)point:(id)sender;
- (IBAction)posneg:(id)sender;
- (IBAction)add:(id)sender;
- (IBAction)subtract:(id)sender;
- (IBAction)multiply:(id)sender;
- (IBAction)divide:(id)sender;
- (IBAction)equals:(id)sender;
- (IBAction)memadd:(id)sender;
- (IBAction)memsubtract:(id)sender;
- (IBAction)memrecall:(id)sender;
- (IBAction)memclear:(id)sender;
- (IBAction)clear:(id)sender;
- (IBAction)backspace:(id)sender;

@end
