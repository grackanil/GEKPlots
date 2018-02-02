//
//  ModelB.h
//  DesignPatterns_Multi-Inheritance
//
//  Created by gekang on 2018/2/2.
//  Copyright © 2018年 gekang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DisplayDataProtocol.h"

@interface ModelB : NSObject <DisplayDataProtocol>

@property (nonatomic, copy) NSString *titleB;
@property (nonatomic, copy) NSString *subTitleB;
+ (instancetype)parseWithDictionary:(NSDictionary *)dictionary;

@end
