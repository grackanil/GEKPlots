//
//  ModelA.m
//  DesignPatterns_Multi-Inheritance
//
//  Created by gekang on 2018/2/2.
//  Copyright © 2018年 gekang. All rights reserved.
//

#import "ModelA.h"

@implementation ModelA

- (NSString *)title {
    return self.titleA;
}

- (NSString *)subTitle {
    return self.subTitleA;
}

+ (instancetype)parseWithDictionary:(NSDictionary *)dictionary {
    ModelA *model = [ModelA new];
    model.titleA = [dictionary objectForKey:@"titleA"];
    model.subTitleA = [dictionary objectForKey:@"subTitleA"];
    return model;
}

@end
