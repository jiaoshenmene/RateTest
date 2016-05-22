//
//  AnnuityBuilder.h
//  RateTest
//
//  Created by qitmac000246 on 15/5/13.
//  Copyright (c) 2015年 杜甲. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AnnuityBuilder : NSObject

- (void) startAnnuity;


- (float) personAnnuityRate:(float)rate year:(int)year inputMoney:(float) inputMoney;

@end
