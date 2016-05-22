//
//  AnnuityBuilder.m
//  RateTest
//
//  Created by qitmac000246 on 15/5/13.
//  Copyright (c) 2015年 杜甲. All rights reserved.
//

#import "AnnuityBuilder.h"

@implementation AnnuityBuilder


- (void) startAnnuity
{
 
    int year = 1;
    
    float inputMoney = 1;
    
    float inputMoneyFirst = 0;
    float result = 0.0;
    for (int i = 0; i < 30; i++) {
        result = [self personAnnuityDynamicYear:year stopInputYear:10  rate:0.15 inputMoney:inputMoney inputMoneyFirst:inputMoneyFirst];
        year++;
   
    }
    
    
    
}



- (float) personAnnuityDynamicYear:(int)year stopInputYear:(int)stopyear  rate:(float)rate inputMoney:(float)inputMoney inputMoneyFirst:(float)inputMoneyFirst
{
    float rate_cur = rate;
    float result = 0.0;
    for (int i = 0; i < 1; i++)
    {
       result = [self personAnnuityDynamicRate:rate_cur year:year stopInputYear:stopyear  inputMoney:inputMoney inputMoneyFirst:inputMoneyFirst];
        rate_cur += 0.005;
    }
    return result;
}

- (float) personAnnuityDynamicRate:(float)rate year:(int)year stopInputYear:(int)stopyear  inputMoney:(float)inputMoney inputMoneyFirst:(float)inputMoneyFirst
{
    
    float month = inputMoney;
    float result = 0.0;
    for (int i = 0 ; i < 1 ; i++)
    {
        
       result = [self personAnnuityRate:rate year:year stopInputYear:stopyear  inputMoneyMonth:month inputMoneyFirst:inputMoneyFirst];
        month += 0.1f;
    }

    return result;
}


/*
 rate    inputMoneyMouth 每月新增   year   inputMoneyFirst 初始
 */
- (float) personAnnuityRate:(float)rate year:(int)year stopInputYear:(int)stopyear inputMoneyMonth:(float)inputMoneyMonth inputMoneyFirst:(float ) inputMoneyFirst
{
    
    int year_month = year * 12;
    float inputMoney = inputMoneyFirst;//[self personAnnuityRate:0.12 year:1 inputMoney:30];
    
    for (int i = 0; i < year_month; i++)
    {
        if (i <= stopyear * 12) {
            inputMoney += inputMoneyMonth;
        }
        if (i > (stopyear + 1) * 12) {
            inputMoney -= 0.8;
        }
        inputMoney= inputMoney * ( 1 + (rate / 12));
        
//        NSString * result = [NSString stringWithFormat:@"year = %d,MoneyMonth = %0.2f,rate = %0.1f%@,sum = %0.3f",year,inputMoneyMonth,rate * 100,@"%",inputMoney];
//        NSLog(@"%@",result);
        
    }
    NSString * result = [NSString stringWithFormat:@"year = %d,MoneyMonth = %0.2f,rate = %0.1f%@,sum = %0.3f",year,inputMoneyMonth,rate * 100,@"%",inputMoney];
    NSLog(@"%@",result);
    
    return inputMoney;
    
}

- (float) personAnnuityRate:(float)rate year:(int)year inputMoney:(float) inputMoney
{
    NSString * result = @"";
    for (int i = 0; i < year; i++)
    {
        inputMoney= inputMoney * ( 1 + rate);
        result = [NSString stringWithFormat:@"year = %d rate = %0.1f%@ sum = %0.2f",year,rate * 100,@"%",inputMoney];
    }
    
   
    return inputMoney;
}
@end
