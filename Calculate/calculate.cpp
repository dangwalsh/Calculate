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
#include <cstring>
#include <sstream>
#include <algorithm>
#include <iterator>
#include "calculate.h"
using namespace std;

bool calculate::_mem;
double calculate::_memtotal;

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
    calculate::_mem = false;
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
    calculate::_mem = !_mem;
}

void calculate::memadd()
{
    if (tokens.size() == 1) {
        double n = atof(tokens[0].c_str());
        calculate::_memtotal += n;
    }    
}

void calculate::memsubtract()
{
    if (tokens.size() == 1) {
        double n = atof(tokens[0].c_str());
        calculate::_memtotal -= n;
    }
}

double calculate::memrecall()
{
    return calculate::_memtotal;
}

void calculate::memclear()
{
    calculate::_memtotal = 0.0;
}

bool calculate::parse(string& s)
{
    if (s != "") {
        istringstream iss(s);
        
        copy(istream_iterator<string>(iss),
             istream_iterator<string>(),
             back_inserter<vector<string> >(tokens));
        
        return true;
    }
    return false;
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
    size_t n = tokens.size();
    vector<double> num;
    vector<string> oper;
    
    for (int i = 0; i < n; ++i) {
        remchar(tokens[i]);
        num.push_back(atof(tokens[i].c_str()));
        if (!num[i]) {
            oper.push_back(tokens[i]);
        }
    }
    
    n = oper.size();
    
    for (size_t i = 0; i < n; ) {
        size_t j = i * 2;
        if (oper[i] == "×") {
            answer = multiply(num[j], num[j+2]);
            num[j] = answer;
            num.erase(num.begin() + (j+1), num.begin() + (j+3));
            oper.erase(oper.begin() + i);
            --n;
        } else if (oper[i] == "÷") {
            answer = divide(num[j], num[j+2]);
            num[j] = answer;
            num.erase(num.begin() + (j+1), num.begin() + (j+3));
            oper.erase(oper.begin() + i);
            --n;
        } else {
            ++i;
        }
    }
    
    n = oper.size();
    
    for (size_t i = 0; i < n; ++i) {
        size_t j = i * 2;
        if (oper[i] == "+") {
            answer = add(num[j], num[j+2]);
        } else if (oper[i] == "−") {
            answer = subtract(num[j], num[j+2]);
        } else {
            cerr << "Invalid operand.\n";
        }
        num[j+2] = answer;
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

/*
void calculate::backspace(string& s)
{
    int n = s.size();
    if (n > 0) {
        //s.resize(s.size() - 1);
        s.erase(s.begin() + (n-1));
    }
}
*/