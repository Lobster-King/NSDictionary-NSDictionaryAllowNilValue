//
//  NSDictionary+NSDictionaryAllowNilValue.h
//  DictionaryExtent
//  to avoid app crash when passing nil
//  Created by leoliu on 14/11/10.
//  Copyright (c) 2014年 leoliu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (NSDictionaryAllowNilValue)

+ (instancetype)dictionaryWithAllowNilValueObjects:(const id [])objects forKeys:(const id [])keys count:(NSUInteger)count defaultNilValue:(id)defaultValue;
@end

