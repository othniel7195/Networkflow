//
//  ZLongConnection.m
//  NetworkWithSocket
//
//  Created by zhao.feng on 2018/12/21.
//  Copyright © 2018年 zhao.feng. All rights reserved.
//

#import "ZLongConnection.h"
#import "ZSocket.h"
#import <sys/socket.h>

@implementation ZLongConnection


- (void)doRequestServiceWithFinishRequestModel:(ZFinishRequestModel *)fRequestModel
{
    //连接
    [self doConnectWithTask:fRequestModel];
    
    //发送
    [self doSendWithTask:fRequestModel];
    
    
    //接收
    [self doReceiveLengthWithTask:fRequestModel];
    [self doReceiveBodyWithTask:fRequestModel];
    
    
    //如果某个服务失败 就降低服务ip和端口的权重
    [self downIPWeight:@"" port:@""];
    
}

- (void)doConnectWithTask:(ZFinishRequestModel *)fRequestModel
{
    //区分支不支持ipv6  ipv6 用hostname
    
    ZSocket *socket = [[ZSocket alloc] init];
    [socket connectToSocket];
}

- (void)doSendWithTask:(ZFinishRequestModel *)fRequestModel
{
    ssize_t currentBytesSend = 0;//当次之前已经发送的数据长度
    ssize_t totalBytesSend = 0; //总共发送的长度

    //发送数据总的bytes
    const char *bytes = [[@"" dataUsingEncoding:NSUTF8StringEncoding] bytes];
    while (/**数据是否正常的判断条件*/ YES) {
        CFSocketRef s = NULL;
        int flag = CFSocketGetNative(s);//获取关联的socket
        /*
          1）第一个参数指定发送端套接字描述符；
         （2）第二个参数指明一个存放应用程序要发送数据的缓冲区；
         （3）第三个参数指明实际要发送的数据的字节数；
         （4）第四个参数一般置0。
         */
        ssize_t numBytesSend = send(flag, bytes+currentBytesSend, totalBytesSend - currentBytesSend, 0);
        if (numBytesSend > 0) {
            currentBytesSend += numBytesSend;
        }
        else {
            //数据异常
        }
    }
}

- (void)doReceiveLengthWithTask:(ZFinishRequestModel *)fRequestModel
{
    //select 接收socket 执行状态  根据状态做处理  select 可以不用等到函数执行接收 （用了判断函数执行中的状态）
    //recv 获取__headBodyLength 数据
}

- (void)doReceiveBodyWithTask:(ZFinishRequestModel *)fRequestModel
{
   //recv  获取bodyLength 数据
}

- (void)downIPWeight:(NSString *)ip port:(NSString *)port
{
    //降低ip 和port 权重
}
@end
