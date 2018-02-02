//
//  ViewModelA.m
//  DesignPatterns_Multi-Inheritance
//
//  Created by gekang on 2018/2/2.
//  Copyright © 2018年 gekang. All rights reserved.
//

#import "ViewModelA.h"
#import "ModelA.h"

@implementation ViewModelA

- (void)fetchDataWithCompleteHandler:(void (^)(void))completeHander {
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0f * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            NSDictionary *item = @{ @"titleA" : @"Jhons", @"subTitleA" : @"iOS dev" };
            ModelA *aModel = [ModelA parseWithDictionary:item];
            self.dataArray = @[aModel];
            if (completeHander) {
                completeHander();
            }
    });
}

@end
