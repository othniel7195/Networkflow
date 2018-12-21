//
//  ZSwitchRequestToResponse.m
//  NetworkWithSocket
//
//  Created by zhao.feng on 2018/12/21.
//  Copyright © 2018年 zhao.feng. All rights reserved.
//

#import "ZSwitchRequestToResponse.h"
#import "ZResponseExecuteService.h"

@implementation ZSwitchRequestToResponse


- (id)switchRequestToResponse:(id)requestModel
{
    return [self responseFromService:requestModel];
}


- (id)responseFromService:(id)requestModel
{
    return [ZResponseExecuteService doRequestServiceForGetResponse:requestModel];
}
@end
