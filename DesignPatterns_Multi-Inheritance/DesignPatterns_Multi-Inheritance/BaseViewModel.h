//
//  BaseViewModel.h
//  DesignPatterns_Multi-Inheritance
//
//  Created by gekang on 2018/2/2.
//  Copyright © 2018年 gekang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DisplayDataProtocol.h"

@interface BaseViewModel : NSObject

@property (nonatomic, strong) NSArray <id<DisplayDataProtocol>>* dataArray;
- (void)fetchDataWithCompleteHandler:(void(^)(void))completeHander;

@end
