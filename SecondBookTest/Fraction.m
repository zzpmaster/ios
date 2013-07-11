//
//  Fraction.m
//  SecondBookTest
//
//  Created by zzp on 13-7-1.
//  Copyright (c) 2013年 zzp. All rights reserved.
//

#import "Fraction.h"

int gNumber = 10;

@interface Fraction()   //未命名分类，可以定义变量和方法，都是私有的

@property int pid;

-(void) privateMethod;

@end

@implementation Fraction

@synthesize numberator;
@synthesize denominator;
@synthesize pid;

-(void) print{
    NSLog(@"%i/%i", numberator, denominator);
    [self privateMethod];
}

-(void) setTo:(int) n over:(int) d{
    numberator = n;
    denominator = d;
}

-(void) add:(Fraction *) f{
    numberator = numberator * f.denominator + denominator * f.numberator;
    denominator = denominator * f.denominator;
}

-(void) printNumber{
    NSLog(@"%d", gNumber);
}


-(void) privateMethod{
    NSLog(@"this is private method!");
}

-(void) draw1{
    NSLog(@"%f", PI);
    NSLog(@"%d", IS_LEAP_YEAR(2000));
}

@end
