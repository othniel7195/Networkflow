//
//  ZLongConnection.h
//  NetworkWithSocket
//
//  Created by zhao.feng on 2018/12/21.
//  Copyright © 2018年 zhao.feng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZFinishRequestModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface ZLongConnection : NSObject

- (void)doRequestServiceWithFinishRequestModel:(ZFinishRequestModel *)fRequestModel;
@end

NS_ASSUME_NONNULL_END
