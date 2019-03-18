// Created by JX-You
// Email:17762541214@163.com
// Wechat:17762541214
// Github:https://github.com/JX-You

#import "JXChain.h"

NS_ASSUME_NONNULL_BEGIN

@interface UIView (Bridge)

@property (nonatomic) JXChain *ownMake;

- (JXChain *)jx_makeChains;

- (void)jx_makeChains:(void(^)(JXChain * make))block;

@end

NS_ASSUME_NONNULL_END
