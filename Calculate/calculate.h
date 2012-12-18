//
//  calculate.h
//  Calculate
//
//  Created by Daniel Walsh on 11/27/12.
//  Copyright (c) 2012 Daniel Walsh. All rights reserved.
//

#ifndef __Calculate__calculate__
#define __Calculate__calculate__

#include <iostream>
#include <vector>
using namespace std;

class calculate
{
    double _total;
    bool _mem;
    vector<string> tokens;
public:
    calculate();
    double add(double a, double b);
    double subtract(double a, double b);
    double multiply(double a, double b);
    double divide(double a, double b);
    double analyze();
    void parse(string& s);
    void remchar(string& s);
    void convert(string& s);
    void memtoggle();
    void memadd(double a);
    void memclear();
    string locate();
    void backspace(string& s);
};


#endif /* defined(__Calculate__calculate__) */
