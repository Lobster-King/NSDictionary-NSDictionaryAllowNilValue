//
//  NSDictionary+NSDictionaryAllowNilValue.m
//  DictionaryExtent
//
//  Created by leoliu on 14/11/10.
//  Copyright (c) 2014年 leoliu. All rights reserved.
//

#import "NSDictionary+NSDictionaryAllowNilValue.h"

@implementation NSDictionary (NSDictionaryAllowNilValue)

+ (instancetype)dictionaryWithAllowNilValueObjects:(const id [])objects forKeys:(const id [])keys count:(NSUInteger)count defaultNilValue:(id)defaultValue
{
    id newObjects[count];
    id newKeys[count];
    for (int i = 0; i < count; i++) {
        //key值为空的跳过
        if (!keys[i]) {
            continue;
        }
        if (objects[i]) {
            newObjects[i] = objects[i];
        }else
        {
            if (defaultValue == nil) {
                newObjects[i] = [NSNull null];
            }else
            {
                newObjects[i] = defaultValue;
            }
        }
        newKeys[i] = keys[i];
    }
    return [self dictionaryWithObjects:newObjects forKeys:newKeys count:count];
}
@end
