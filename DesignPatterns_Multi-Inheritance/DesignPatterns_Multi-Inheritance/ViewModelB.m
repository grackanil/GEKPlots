//
//  ViewModelB.m
//  DesignPatterns_Multi-Inheritance
//
//  Created by gekang on 2018/2/2.
//  Copyright © 2018年 gekang. All rights reserved.
//

#import "ViewModelB.h"
#import "ModelB.h"

@implementation ViewModelB

- (void)fetchDataWithCompleteHandler:(void (^)(void))completeHander {
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0f * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        NSDictionary *item = @{ @"titleB" : @"lina", @"subTitleB" : @"Web dev" };
        ModelB *bModel = [ModelB parseWithDictionary:item];
        self.dataArray = @[bModel];
        if (completeHander) {
            completeHander();
        }
    });
}

@end
