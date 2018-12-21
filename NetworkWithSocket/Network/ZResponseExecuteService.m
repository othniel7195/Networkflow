//
//  ZResponseExecuteService.m
//  NetworkWithSocket
//
//  Created by zhao.feng on 2018/12/21.
//  Copyright © 2018年 zhao.feng. All rights reserved.
//

#import "ZResponseExecuteService.h"
#import "ZFinishRequestModel.h"
#import "ZLongConnection.h"


@implementation ZResponseExecuteService
+ (id)doRequestServiceForGetResponse:(id)requestModel
{
    id response = [[NSObject alloc] init];
    
    //组装真正的request model
    ZFinishRequestModel *fRequestModel = [[ZFinishRequestModel alloc] init];
    fRequestModel.requestModel  = requestModel;
    
    //序列化请求信息
    NSData *requestData = [ZResponseExecuteService serializeRequestModel:fRequestModel];
    
    //拼装报文头
    [fRequestModel buileRequest:requestData];
    
    //请求服务
    [ZResponseExecuteService doServiceByKeepAliveConn:fRequestModel];
    
    
    //获取服务返回数据
    
    //反序列化
    
    return response;
}

//序列化
+ (NSData *)serializeRequestModel:(ZFinishRequestModel *)fRequestModel
{
    //序列化后的data
    NSData *data = [[NSData alloc] init];
    return data;
}


//长连接发服务
+ (void)doServiceByKeepAliveConn:(ZFinishRequestModel *)task
{
    ZLongConnection *longConnection = [[ZLongConnection alloc] init];
    
    [longConnection doRequestServiceWithFinishRequestModel:task];
    
}
@end
