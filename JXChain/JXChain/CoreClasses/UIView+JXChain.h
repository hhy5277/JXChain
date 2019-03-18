// Created by JX-You
// Email:17762541214@163.com
// Wechat:17762541214
// Github:https://github.com/JX-You

#import "JXChainMaker.h"

NS_ASSUME_NONNULL_BEGIN

@interface UIView (JXChain)

/**
 类似SDAutoLayout的用法

 @return JXChainMaker实例
 */
- (JXChainMaker *)jx_makeChains;


/**
 实例方法:设置一个UIView实例的属性,类似Masonry框架;

 @param block 回调,将JXChainMaker实例传出去
 */
- (void)jx_makeChains:(void(^)(JXChainMaker * maker))block;


/**
 类方法:返回一个设置好属性的UIView实例

 @param block 回调,将JXChainMaker实例传出去
 @return 设置好属性的UIView实例
 */
+ (instancetype)jx_makeChains:(void(^)(JXChainMaker * maker))block;

@end

NS_ASSUME_NONNULL_END
