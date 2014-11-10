//
//  ViewController.m
//  DictionaryExtent
//
//  Created by leoliu on 14/11/10.
//  Copyright (c) 2014年 leoliu. All rights reserved.
//

#import "ViewController.h"
#import "NSDictionary+NSDictionaryAllowNilValue.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    static NSUInteger const count = 4;
    id objects[count] = {@"1",@"2",nil,@"4"};
    id keys[count] = {@"one",@"two",@"nil",@"four"};
    
    NSDictionary *dic = [NSDictionary dictionaryWithAllowNilValueObjects:objects forKeys:keys count:count defaultNilValue:@0];
    NSLog(@"%@",dic);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
