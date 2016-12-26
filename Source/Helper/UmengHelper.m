//
//  JSPatchHelper.m
//  Pods
//
//  Created by Reminisce on 2016/11/8.
//
//

#import "UmengHelper.h"
#import <UMSocialCore/UMSocialCore.h>
#import "UMMobClick/MobClick.h"

@implementation UmengHelper

#pragma mark --umeng

+(void)startUmeng{

    //友盟统计
    UMConfigInstance.appKey = UMENG_APPKEY;
    UMConfigInstance.channelId = @"App Store";
    //version标识
    NSString *version = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
    [MobClick setAppVersion:version];
    [MobClick startWithConfigure:UMConfigInstance];
    
    //打开调试日志
    [[UMSocialManager defaultManager] openLog:YES];
    
    //设置友盟appkey
    [[UMSocialManager defaultManager] setUmSocialAppkey:UMENG_APPKEY];
    
    //设置微信的appKey和appSecret
    [[UMSocialManager defaultManager] setPlaform:UMSocialPlatformType_WechatSession appKey:WEIXIN_APPID appSecret:WXSECRET redirectURL:@"http://mobile.umeng.com/social"];
    
    
    //设置分享到QQ互联的appKey和appSecret
    [[UMSocialManager defaultManager] setPlaform:UMSocialPlatformType_QQ appKey:QQ_APPID  appSecret:QQ_APPKEY redirectURL:@"http://mobile.umeng.com/social"];
    
    //设置新浪的appKey和appSecret
    [[UMSocialManager defaultManager] setPlaform:UMSocialPlatformType_Sina appKey:SINA_APPKEY  appSecret:SINA_SECRET redirectURL:@"sns.whalecloud.com"];
}

+(void)shareResultWithHandleOpenURL:url{
    BOOL result = [[UMSocialManager defaultManager] handleOpenURL:url];
    if(result){
    
    }
}

@end
