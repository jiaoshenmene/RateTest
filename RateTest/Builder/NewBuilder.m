//
//  NewBuilder.m
//  RateTest
//
//  Created by qitmac000246 on 15/6/23.
//  Copyright (c) 2015年 杜甲. All rights reserved.
//

#import "NewBuilder.h"

@implementation NewBuilder
- (id) init
{
    if (self = [super init]) {
        
        [self profit];
        
        
        
        
        
        
    }
    return self;
}

- (void) annuity
{
    
}

- (void)profit
{
    
    float sum = 100000;
    float rate = 0.06;
    float frateTotal = 0.0;
    float fq = sum / 12;
    float investRate = 0.199;
    float qrate =  sum * rate / 12;
    
    for (int i = 1; i < 13; i++)
    {
        float investProfit = sum * investRate / 12;
        investProfit -= qrate;
        NSLog(@"month = %d fq= %0.2f qrate = %0.2f ， sum = %0.2f investProfit = %0.2f",i,fq,qrate,sum,investProfit);
        sum += investProfit;
        sum  -= fq;
        
    }
    NSLog(@"%f",sum);
    
    
}

@end
