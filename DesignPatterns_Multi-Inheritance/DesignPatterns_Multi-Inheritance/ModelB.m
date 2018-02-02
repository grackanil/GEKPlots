//
//  ModelB.m
//  DesignPatterns_Multi-Inheritance
//
//  Created by gekang on 2018/2/2.
//  Copyright © 2018年 gekang. All rights reserved.
//

#import "ModelB.h"

@implementation ModelB

- (NSString *)title {
    return self.titleB;
}

- (NSString *)subTitle {
    return self.subTitleB;
}

+ (instancetype)parseWithDictionary:(NSDictionary *)dictionary {
    ModelB *model = [ModelB new];
    model.titleB = [dictionary objectForKey:@"titleB"];
    model.subTitleB = [dictionary objectForKey:@"subTitleB"];
    return model;
}

@end
