//
//  ZSenderOperationQueue.m
//  NetworkWithSocket
//
//  Created by zhao.feng on 2018/12/21.
//  Copyright © 2018年 zhao.feng. All rights reserved.
//

#import "ZSenderOperationQueue.h"

@interface ZSenderOperationQueue ()

@property(nonatomic, strong)NSOperationQueue *requestQueue;

@end

@implementation ZSenderOperationQueue


- (id)init
{
    self = [super init];
    if (self) {
        self.requestQueue = [[NSOperationQueue alloc] init];
    }
    return self;
}

- (void)addSenderTask:(ZSenderOperation *)task
{
    [self.requestQueue addOperation:task];
}

@end
