//
//  ShareInfo.m
//  schoolConnection
//
//  Created by 格式科技 on 16/7/31.
//  Copyright (c) 2016 Remionisce. All rights reserved.
//

#import "ShareInfo.h"

@implementation ShareInfo

- (instancetype)initWithDic:(NSDictionary*)dic{

    if(self = [super init]){
        if (dic) {
            if (nil != dic[@"shareLink"]) {
                self.shareLink = dic[@"shareLink"];
            }
            if (nil != dic[@"shareImg"]) {
                self.shareImg = dic[@"shareImg"];
            }
            if (nil != dic[@"shareDesc"]) {
                self.shareDesc = dic[@"shareDesc"];
            }
            if (nil != dic[@"shareTitle"]) {
                self.shareTitle = dic[@"shareTitle"];
            }
            if (nil != dic[@"shareSmallImg"]){
                self.shareSmallImg = dic[@"shareSmallImg"];
            }
        }
    }

    return self;

}

@end
