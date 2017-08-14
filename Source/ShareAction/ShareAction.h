//
//  ShareAction.h
//  schoolConnection
//
//  Created by 格式科技 on 16/9/5.
//  Copyright (c) 2016 杭州格式科技有限公司. All rights reserved.
//

#import "ShareInfo.h"
#import "BaseViewController.h"
@interface ShareAction : NSObject

+(void)shareWithName:(NSString *)name url:(NSString *)url desc:(NSString *)desc img:(id)img withShareImg:(id)shareImg withViewController:(BaseViewController *)viewController;

+(void)shareWithModel:(ShareInfo*)shareInfo withViewController:(BaseViewController *)viewController;

@end
