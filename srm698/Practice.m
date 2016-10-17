//
//  Practice.m
//  srm698
//
//  Created by Abraham Brovold on 10/16/16.
//  Copyright (c) 2016 Abraham Brovold. All rights reserved.
//

#import "Practice.h"

@implementation Practice

/**
 
 Solves in O(n/2)
 
 */

-(NSUInteger)minimalModify:(NSString *)s{
  
    NSUInteger totalSteps = 0;
 
    NSMutableString *newString = [NSMutableString stringWithString:s];

    // take advantage of dynamic binding to determine the proper halfway point at runtime
    NSUInteger stringHalfway;
    
    if (s.length == 0) {
        // Requirements are already met if string is empty.
        return 0;   
    }
    
    if (s.length % 2 != 0) {
        // string is odd. does not meet criteria
        // you must at least add or subtract one character, otherwise it cannot be split.
        [newString appendFormat:@"%c", [s characterAtIndex:(int)s.length-1]];
        totalSteps++;
        stringHalfway = (s.length + 1) / 2;
    } else {
        stringHalfway = s.length / 2;
    }
  
    NSRange secondRange = NSMakeRange(stringHalfway - 1, (int)s.length - 1);
      
    for (int i = 0; i <= secondRange.location; i++) {
       
        @autoreleasepool{
        unichar firstChar = [s characterAtIndex:i];
        unichar secondChar = [s characterAtIndex:stringHalfway];
           
        if (firstChar != secondChar) {
            NSRange r1 = NSMakeRange(i , 1);
            NSRange r2 = NSMakeRange(stringHalfway + i,1);
            [newString replaceCharactersInRange:r2 withString:[s substringWithRange:r1]];
            totalSteps++;
        }
        }
    }
        
    NSLog(@"%@", newString);
    return totalSteps;
}

-(bool)stringIsValid:(NSString *)s {
    
    NSCharacterSet* notAlpha = [[NSCharacterSet letterCharacterSet] invertedSet];
    
    if ([s rangeOfCharacterFromSet:notAlpha].location == NSNotFound)
    {
        return true;
    } else {
        return false;
    }
}

@end
