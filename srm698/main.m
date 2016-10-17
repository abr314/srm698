//
//  main.m
//  srm698
//
//  Created by Abraham Brovold on 10/16/16.
//  Copyright (c) 2016 Abraham Brovold. All rights reserved.
//



/**
 
 https://community.topcoder.com/stat?c=problem_statement&pm=14391
 
 RepeatString
 
 Problem Statement
 
 A string S is called a square if there is some string T such that S = T + T. For example, the strings "", aabaab" and "xxxx" are squares, but "a", "aabb" and "aabbaa" are not. 
 
 You are given a String s. You want to change s into a square. You may do the following operations:
 Insert a new character anywhere into the string (including its beginning and end).
 Remove a single character.
 Replace a single character by another character.
 
 Please compute and return the smallest number of operations needed to change the given s into a square. Note that this is always possible: for example, you can remove all characters (one at a time).
 
 Definition
 
 Class:	RepeatString
 Method:	minimalModify
 Parameters:	String
 Returns:	int
 Method signature:	int minimalModify(String s)
 (be sure your method is public) 
 
 */

#import <Foundation/Foundation.h>
#import "Practice.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Practice *x = [Practice new];
        NSString *s = @"asgasga";
        
        if ([x stringIsValid:s])
        {
            NSUInteger i = [x minimalModify:s];
            NSLog(@"%lu", (unsigned long)i);
        } else {
            NSLog(@"Error: string should only contain letters");
        }
    }
    return 0;
}
