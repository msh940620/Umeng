//
//  ShareAction.m
//  schoolConnection
//
//  Created by 格式科技 on 16/9/5.
//  Copyright (c) 2016 杭州格式科技有限公司. All rights reserved.
//

#import "ShareAction.h"
#import <UShareUI/UMSocialUIManager.h>

@interface ShareAction()

@end

@implementation ShareAction

+(void)shareWithName:(NSString *)name url:(NSString *)url desc:(NSString *)desc img_url:(NSString *)imgUrl withViewController:(BaseViewController *)viewController{
    
    ShareInfo *shareInfo = [[ShareInfo alloc]init];
    shareInfo.shareTitle = name;
    shareInfo.shareImg = imgUrl;
    shareInfo.shareDesc = desc;
    shareInfo.shareLink = url;
    [ShareAction shareWithModel:shareInfo withViewController:viewController];
    
}


+(void)shareWithModel:(ShareInfo*)shareInfo withViewController:(BaseViewController *)viewController{
    
    //创建分享消息对象
    UMSocialMessageObject *messageObject = [UMSocialMessageObject messageObject];
    UMShareWebpageObject *shareObject = [UMShareWebpageObject shareObjectWithTitle:shareInfo.shareTitle descr:shareInfo.shareDesc thumImage:shareInfo.shareImg];
    [shareObject setWebpageUrl:shareInfo.shareLink];
    
    //分享消息对象设置分享内容对象
    messageObject.shareObject = shareObject;
    //调用分享接口
    [UMSocialUIManager showShareMenuViewInWindowWithPlatformSelectionBlock:^(UMSocialPlatformType platformType, NSDictionary *userInfo) {
        [[UMSocialManager defaultManager] shareToPlatform:platformType messageObject:messageObject currentViewController:self completion:^(id data, NSError *error) {
            if (error) {
                UMSocialLogInfo(@"************Share fail with error %@*********",error);
            }else{
                if ([data isKindOfClass:[UMSocialShareResponse class]]) {
                    UMSocialShareResponse *resp = data;
                    //分享结果消息
                    UMSocialLogInfo(@"response message is %@",resp.message);
                    //第三方原始返回的数据
                    UMSocialLogInfo(@"response originalResponse data is %@",resp.originalResponse);
                    
                }else{
                    UMSocialLogInfo(@"response data is %@",data);
                }
            }
        }];
    }];
    
    
}


@end
