//
//  ZSocket.h
//  NetworkWithSocket
//
//  Created by zhao.feng on 2018/12/21.
//  Copyright © 2018年 zhao.feng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZSocket : NSObject

- (BOOL)connectToSocket;
- (void)disconnect;
@end

NS_ASSUME_NONNULL_END
