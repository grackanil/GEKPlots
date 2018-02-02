//
//  DisplayDataProtocol.h
//  DesignPatterns_Multi-Inheritance
//
//  Created by gekang on 2018/2/2.
//  Copyright © 2018年 gekang. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DisplayDataProtocol <NSObject>

@required
@property (nonatomic, copy, readonly) NSString *title;
@optional
@property (nonatomic, copy, readonly) NSString *subTitle;

@end
