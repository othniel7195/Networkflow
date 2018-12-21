//
//  ZSocket.m
//  NetworkWithSocket
//
//  Created by zhao.feng on 2018/12/21.
//  Copyright © 2018年 zhao.feng. All rights reserved.
//

#import "ZSocket.h"

@implementation ZSocket


- (BOOL)connectToSocket
{
    dispatch_block_t block = ^{
        @autoreleasepool {
            
            [self connectWithSocektRef:nil address:nil error:nil];
        }
    };
    void *_socketQueueKey;
    if (dispatch_get_specific(_socketQueueKey)) {
        block();
    } else {
        dispatch_queue_t _socketQueue = dispatch_queue_create(_socketQueueKey, NULL);
        dispatch_sync(_socketQueue, block);
    }
    
    return YES;
}

//真正的socket连接
- (BOOL)connectWithSocektRef:(CFSocketRef)socketRef address:(NSData *)address error:(NSError **)errPtr
{
    return YES;
}

- (void)disconnect
{
    
}
@end
