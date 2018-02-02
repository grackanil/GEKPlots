//
//  ModelA.h
//  DesignPatterns_Multi-Inheritance
//
//  Created by gekang on 2018/2/2.
//  Copyright © 2018年 gekang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DisplayDataProtocol.h"

@interface ModelA : NSObject <DisplayDataProtocol>

@property (nonatomic, copy) NSString *titleA;
@property (nonatomic, copy) NSString *subTitleA;
+ (instancetype)parseWithDictionary:(NSDictionary *)dictionary;

@end
