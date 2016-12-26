//
//  ShareInfo.h
//  schoolConnection
//
//  Created by 格式科技 on 16/7/31.
//  Copyright (c) 2016 Remionisce. All rights reserved.
//

@interface ShareInfo : NSObject

@property (nonatomic, copy) NSString *shareLink;
@property (nonatomic, copy) NSString *shareImg;
@property (nonatomic, copy) NSString *shareDesc;
@property (nonatomic, copy) NSString *shareTitle;
- (instancetype)initWithDic:(NSDictionary*)dic;
@end
