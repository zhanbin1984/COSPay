//
//  COSPaySDK.h
//  COSPaySDK
//
//  Created by zhanbin on 2018/4/17.
//  Copyright © 2018年 mbr. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^CompletionBlock)(NSDictionary *resultDic);

@interface COSPaySDK : NSObject

/**
 *  创建支付单例服务
 *
 *  @return 返回单例对象
 */
+ (COSPaySDK *)defaultService;

/**
 *  支付接口
 *
 *  @param orderStr       订单信息
 *  @param schemeStr      调用支付的app注册在info.plist中的scheme
 */
- (void)payOrder:(NSString *)orderStr
      fromScheme:(NSString *)schemeStr;

/**
 *  处理COSPay app支付跳回商户app携带的支付结果Url
 *
 *  @param resultUrl        支付结果url
 *  @param completionBlock  支付结果回调
 */
- (void)processOrderWithPaymentResult:(NSURL *)resultUrl
                      standbyCallback:(CompletionBlock)completionBlock;

@end


