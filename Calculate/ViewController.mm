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
    string = @"";
    calc = new calculate();
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
    NSString *s = _screen.text;
    const std::string const *temp = new std::string([s UTF8String]);
    std::string mycppstring = std::string([s UTF8String]);
    NSString *r = [NSString stringWithFormat:@"%i",calc->parse(mycppstring)];
    _screen.text = r;
}

- (IBAction)clear:(id)sender
{
    string = @"";
    _screen.text = string;
}

@end
