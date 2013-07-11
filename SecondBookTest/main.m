//
//  main.m
//  SecondBookTest
//
//  Created by zzp on 13-7-1.
//  Copyright (c) 2013年 zzp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
#import "Test.h"
#import "Test2.h"


enum direction {up, down, left, right};

typedef enum direction Direction;


static BOOL different (int a, int b) {
    return a - b;
}

int showPage() {
    static int pageCount = 0;
    ++pageCount;
    return pageCount;
}

void MLog(NSString * format, ...){
    
}

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Direction d1 = down;
        
        NSLog(@"%d", d1);
        
        // insert code here...
        NSLog(@"Hello, World!");
        
        
        Fraction *f = [[Fraction alloc] init];
        
        if([Fraction instancesRespondToSelector:@selector(setTo:over:)]){
            NSLog(@"Fraction instancesRespondToSelector setTo");
        }
        
        [f setTo:1 over:3];
        
        Fraction *f1 = [[Fraction alloc] init];
        [f1 setTo:1 over:4];
        
        [f add:f1];
        
        [f print];
        
        
//        NSDictionary *dic = @{@"k1":^(){
//            NSLog(@"k1");
//        }, @"k2":^(){
//            NSLog(@"k2");
//        }};

        /*
        bool a = 90;
        
        BOOL b = 100 - 99;
        
        Boolean c = 1;
        
        if(a == YES){
            NSLog(@"123123123123123");
        }
        
        if(c == YES){
            NSLog(@"%d...", different(512, 256));
        }
        

        NSLog(@"%d,,%d", a, b);
        
        if (different(11, 10) == YES) {
            printf ("11 != 10\n");
        } else {
            printf ("11 == 10\n");
        }
        if (different(10, 11) == YES) {
            printf ("10 != 11\n");
        } else {
            printf ("10 == 11\n");
        }
        
        if (different(512, 256) == YES) {
            printf ("512 != 256\n");
        } else {
            printf ("512 == 256\n");
        }
         */
        
        Test *t = [[Test alloc] init];
        
        if([t isMemberOfClass:[Fraction class]]){
            NSLog(@" isMemberOfClass ......");
        }
        
        if([t isKindOfClass:[Fraction class]]){
            NSLog(@" isKindOfClass ......");
        }
        
        if([Test isSubclassOfClass:[NSObject class]]){
            NSLog(@" isSubclassOfClass ......");
        }
        
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
		NSArray *daySymbols = [formatter weekdaySymbols];
        for(int i=0; i<[daySymbols count]; ++i){
            NSLog(@"%@", [daySymbols objectAtIndex:i]);
        }
        
        
        NSLog(@"%d", showPage());
        NSLog(@"%d", showPage());
        NSLog(@"%d", showPage());

        Test2 *t2 = [[Test2 alloc] init];
        [t2 setWidth:1000];
        [t2 method];

        id dataValue;
        [dataValue method];
        
        if([f respondsToSelector:@selector(add:)]){
            NSLog(@"responds add method");
        }
    
        @try {
            NSObject *obj1 = [NSNull null];
            NSArray *arr1 = [NSArray arrayWithObjects:@"One", @"TWO", obj1, @"three" ,nil];
            for (NSString *str in arr1) {
                NSLog(@"array object: %@", [str lowercaseString]);
            }
        }
        @catch (NSException *exception) {
            NSLog(@"Exception !!!!");
        }
    
        extern int gNumber;
        NSLog(@"%d", gNumber);
        gNumber = 100;
        [f printNumber];
        
        
        NSLog(@"%d", left);
        
        
        if([f conformsToProtocol:@protocol(Drawing)]){
            NSLog(@"protocol Drawing!!!");
        }
        
        [f draw1];
        
        /*
            C语言
         */
        int a[15];
        a[0] = 0;
        a[1] = 1;
        for(int i=2; i<15; i++){
            a[i] = a[i - 2] + a[i - 1];
        }
        for (int i=0; i<15; i++) {
            NSLog(@"%d", i);
        }
        
        NSNumber *myNumber = @3;
        NSLog(@"%d", [myNumber intValue]);
        
        
        
        //使用字面量创建的数组活字典默认都是不可变的
        NSArray *array = @[@1, @2, @3];
        NSMutableArray *ma = [array mutableCopy];
        [ma removeObject:@1];
        NSLog(@"字面量...%ld", [array count]);
        NSLog(@"字面量...%ld", [ma count]);

        //宏 判断用LLVM4还是LLVM3.1
#if __has_feature(objc_array_literals)
        
#else
        
#endif
        //测试分支
        int develop = 0;
        NSLog(@"%d", develop);
        //分支2
        int develop1 = 0;
        //分支3
    }
    return 0;
}

