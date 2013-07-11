//
//  Fraction.h
//  SecondBookTest
//
//  Created by zzp on 13-7-1.
//  Copyright (c) 2013年 zzp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Drawing.h"

#define PI 3.1415926
#define IS_LEAP_YEAR(y) (y) % 4 == 0 && (y) % 100 != 0 || (y) % 400 == 0

@interface Fraction : NSObject<Drawing>

@property (assign) int numberator;
@property (assign) int denominator;

-(void) print;
-(void) setTo:(int) n over:(int) d;
-(void) add:(Fraction *) f;

-(void) printNumber;

@end
