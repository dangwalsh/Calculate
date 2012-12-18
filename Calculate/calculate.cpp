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
#include <algorithm>
#include "calculate.h"
using namespace std;

calculate::calculate()
{
/*
    double a[][4] = {
        {1, 2, 3, 4},
        {5, 6, 7, 8},
        {9, 10, 11, 12},
        {13, 14, 15, 16}
    };
    
    size_t n = sizeof a / sizeof a[0];
    
    for (double *p = a[0]; p < a[n]; ++p) {
        cout << p << "\t" << *p << "\n";
    }
*/
    memclear();
    _mem = false;
}

double calculate::add(double a, double b)
{
    double c = a + b;
    return c;
}

double calculate::subtract(double a,double b)
{
    double c = a - b;
    return c;
}

double calculate::multiply(double a,double b)
{
    double c = a * b;
    return c;
}

double calculate::divide(double a,double b)
{
    if (b != 0) {
        double c = a / b;
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

void calculate::memadd(double a)
{
    _total += a;
}

void calculate::memclear()
{
    _total = 0.0;
}

void calculate::parse(string& s)
{
    istringstream iss(s);

    copy(istream_iterator<string>(iss),
         istream_iterator<string>(),
         back_inserter<vector<string> >(tokens));
}

string calculate::locate()
{
    size_t n = tokens.size();

    switch (n) {
        case 1:
            convert(tokens[0]);
            break;
        case 3:
            convert(tokens[2]);
            break;
        default:
            break;
    }
    
    string temp;
    
    for (size_t i = 0; i < n; ++i) {
        
        if (tokens[i][0] == '-') {
            temp.append("(");
            temp.append(tokens[i]);
            temp.append(")");
        } else {
            temp.append(tokens[i]);
        }
        
        temp.append(" ");
    }
    
    return temp;
}

void calculate::convert(string& s)
{
    double d = atof(s.c_str());
    d *= -1;
    ostringstream oss;
    oss << d;
    s = oss.str();
}

double calculate::analyze()
{
    double answer;
    
    remchar(tokens[0]);
    double left = atof(tokens[0].c_str());
    remchar(tokens[2]);
    double right = atof(tokens[2].c_str());
    string temp = tokens[1];
    
    if (temp == "+") {
        answer = add(left, right);
    } else if (temp == "−") {
        answer = subtract(left, right);
    } else if (temp == "×") {
        answer = multiply(left, right);
    } else if (temp == "÷") {
        answer = divide(left, right);
    } else {
        cerr << "Invalid operand.\n";
    }
    
    return answer;
}

void calculate::remchar(string& s)
{
    char chars[] = "()";
    
    size_t n = sizeof chars / sizeof chars[0];
    
    for (char *p = chars; p < chars + n; ++p) {
        s.erase(remove(s.begin(), s.end(), *p), s.end());
    }
}

void calculate::backspace(string& s)
{
    if (s.size() > 0) {
        s.resize(s.size() - 1);
    }
}