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
    int add(int a, int b);
    int subtract(int a, int b);
    int multiply(int a, int b);
    int divide(int a, int b);
    void memtoggle();
    void memadd(int a);
    void memclear();
    int parse(string& s);
    int analyze();
};


#endif /* defined(__Calculate__calculate__) */
