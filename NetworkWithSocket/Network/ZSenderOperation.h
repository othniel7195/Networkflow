//
//  ZSenderOperation.h
//  NetworkWithSocket
//
//  Created by zhao.feng on 2018/12/21.
//  Copyright © 2018年 zhao.feng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZSenderOperation : NSOperation

//发送服务的model
@property(nonatomic, strong)id requestModel;

@end

NS_ASSUME_NONNULL_END
