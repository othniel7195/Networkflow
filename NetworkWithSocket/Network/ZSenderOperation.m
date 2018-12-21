//
//  ZSenderOperation.m
//  NetworkWithSocket
//
//  Created by zhao.feng on 2018/12/21.
//  Copyright © 2018年 zhao.feng. All rights reserved.
//

#import "ZSenderOperation.h"
#import "ZSwitchRequestToResponse.h"

@implementation ZSenderOperation

- (void)dealloc
{
}

- (void)main
{
    @autoreleasepool {
        [self startRequest];
    }
}

- (void)startRequest
{
    NSLog(@"请求服务");
    ZSwitchRequestToResponse *sr = [[ZSwitchRequestToResponse alloc] init];
    id responseModel = [sr switchRequestToResponse:self.requestModel];
    
}
@end
