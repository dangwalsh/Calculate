//
//  ViewController.m
//  Calculate
//
//  Created by Daniel Walsh on 11/27/12.
//  Copyright (c) 2012 Daniel Walsh. All rights reserved.
//

#import "ViewController.h"
#import "calculate.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    string = @""; // initialize through assignment
    numberFormatter = [[NSNumberFormatter alloc] init];
    [numberFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
    
    // programatically create a custom button
    btnPlus = [UIButton buttonWithType:UIButtonTypeCustom];
    [btnPlus setBackgroundColor:[UIColor grayColor]];
    CGRect b = self.view.bounds;
    CGSize s = CGSizeMake(40, 32);
    btnPlus.frame = CGRectMake(
                               0,
                               b.origin.y + (b.size.height - s.height),
                               s.width,
                               s.height);
    [btnPlus setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [btnPlus setTitle:@"+" forState:UIControlStateNormal];
    [btnPlus addTarget:self action:@selector(add:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnPlus];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)one:(id)sender
{
    string = [string stringByAppendingString:@"1"];
    _screen.text = string;
}

- (IBAction)two:(id)sender
{
    string = [string stringByAppendingString:@"2"];
    _screen.text = string;
}

- (IBAction)three:(id)sender
{
    string = [string stringByAppendingString:@"3"];
    _screen.text = string;
}

- (IBAction)four:(id)sender
{
    string = [string stringByAppendingString:@"4"];
    _screen.text = string;
}

- (IBAction)five:(id)sender
{
    string = [string stringByAppendingString:@"5"];
    _screen.text = string;
}

- (IBAction)six:(id)sender
{
    string = [string stringByAppendingString:@"6"];
    _screen.text = string;
}

- (IBAction)seven:(id)sender
{
    string = [string stringByAppendingString:@"7"];
    _screen.text = string;
}

- (IBAction)eight:(id)sender
{
    string = [string stringByAppendingString:@"8"];
    _screen.text = string;
}

- (IBAction)nine:(id)sender
{
    string = [string stringByAppendingString:@"9"];
    _screen.text = string;
}

- (IBAction)zero:(id)sender
{
    string = [string stringByAppendingString:@"0"];
    _screen.text = string;
}

- (IBAction)point:(id)sender
{
    string = [string stringByAppendingString:@"."];
    _screen.text = string;
}

- (IBAction)posneg:(id)sender
{
    calculate *calc = new calculate();
    std::string *temp = new std::string([_screen.text UTF8String]);
    string = @"";
    calc->parse(*temp);
    NSString *str = [NSString stringWithCString:calc->locate().c_str() encoding:NSUTF8StringEncoding];
    string = [string stringByAppendingString:str];
    _screen.text = string;
}

- (IBAction)add:(id)sender
{
    string = [string stringByAppendingString:@" + "];
    _screen.text = string;
}

- (IBAction)subtract:(id)sender
{
    string = [string stringByAppendingString:@" − "];
    _screen.text = string;
}

- (IBAction)multiply:(id)sender
{
    string = [string stringByAppendingString:@" × "];
    _screen.text = string;
}

- (IBAction)divide:(id)sender
{
    string = [string stringByAppendingString:@" ÷ "];
    _screen.text = string;
}

- (IBAction)equals:(id)sender
{
    calculate *calc = new calculate();
    std::string *temp = new std::string([_screen.text UTF8String]);
    calc->parse(*temp);
    NSNumber *number = [NSNumber numberWithDouble:calc->analyze()];
    _screen.text = [numberFormatter stringFromNumber:number];
}

- (IBAction)clear:(id)sender
{
    string = @"";
   _screen.text = string;
}

- (IBAction)memadd:(id)sender
{
    
}

- (IBAction)memcall:(id)sender
{
    
}

- (IBAction)memclear:(id)sender
{
    
}

- (IBAction)backspace:(id)sender
{
    calculate *calc = new calculate();
    std::string *temp = new std::string([string UTF8String]);
    calc->backspace(*temp);
    string = [NSString stringWithCString:temp->c_str() encoding:NSUTF8StringEncoding];
    _screen.text = string;
}

@end
