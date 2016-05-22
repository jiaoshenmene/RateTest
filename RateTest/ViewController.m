//
//  ViewController.m
//  RateTest
//
//  Created by qitmac000246 on 15/5/9.
//  Copyright (c) 2015年 杜甲. All rights reserved.
//

#import "ViewController.h"
#import "AnnuityBuilder.h"
#import "NewBuilder.h"
#import "Rubber.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    AnnuityBuilder *builder = [[AnnuityBuilder alloc] init];
    [builder startAnnuity];
//    NewBuilder *bn = [[NewBuilder alloc] init];
//    [bn ]
    
//    Rubber *rubber = [[Rubber alloc] init];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
