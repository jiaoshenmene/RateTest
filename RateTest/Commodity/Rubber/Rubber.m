//
//  Rubber.m
//  RateTest
//
//  Created by qitmac000246 on 15/7/16.
//  Copyright (c) 2015年 杜甲. All rights reserved.
//

#import "Rubber.h"

@implementation Rubber

- (id)init
{
    if (self = [super init])
    {
        float jPrice = 213.9;
        float curRate = 0.05;
        
        [self priceRubPrice:jPrice curRate:curRate];
        
    }
    return self;
}


- (void) priceRubPrice:(float)jPrice curRate:(float)curRate
{
    NSLog(@"%f",jPrice *curRate *1000);
    
}

@end
