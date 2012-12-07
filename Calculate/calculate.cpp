//
//  calculate.cpp
//  Calculate
//
//  Created by Daniel Walsh on 11/27/12.
//  Copyright (c) 2012 Daniel Walsh. All rights reserved.
//

#include <cstdlib>
#include <iostream>
#include <vector>
#include <string>
#include <sstream>
#include <algorithm>
#include <iterator>
#include "calculate.h"
using namespace std;

calculate::calculate()
{
    memclear();
    _mem = false;
}

int calculate::add(int a, int b)
{
    int c = a + b;    
    return c;
}

int calculate::subtract(int a,int b)
{
    int c = a - b;    
    return c;
}

int calculate::multiply(int a,int b)
{
    int c = a * b;    
    return c;
}

int calculate::divide(int a,int b)
{
    if (b != 0) {
        int c = a / b;
        return c;
    } else {
        cerr << "Division by zero isn't allowed.";
        return 0.0;
    }
}

void calculate::memtoggle()
{
    _mem = !_mem;
}

void calculate::memadd(int a)
{
    _total += a;
}

void calculate::memclear()
{
    _total = 0.0;
}

int calculate::parse(string& s)
{
    istringstream iss(s);

    copy(istream_iterator<string>(iss),
         istream_iterator<string>(),
         back_inserter<vector<string> >(tokens));
    
    return analyze();
}

int calculate::analyze()
{
    int answer;
    
    string temp = tokens[0];
    int left = atoi(temp.c_str());
    temp = tokens[2];
    int right = atoi(temp.c_str());
    temp = tokens[1];
    
    if (temp == "+") {
        answer = add(left, right);
    } else if (temp == "−") {
        answer = subtract(left, right);
    } else if (temp == "×") {
        answer = multiply(left, right);
    } else if (temp == "÷") {
        answer = divide(left, right);
    } else {
        cerr << "Invalid operand.";
    }
    
    return answer;
}