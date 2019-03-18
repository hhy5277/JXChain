// Created by JX-You
// Email:17762541214@163.com
// Wechat:17762541214
// Github:https://github.com/JX-You

#import "UIView+JXChain.h"
#import <objc/runtime.h>

@implementation UIView (JXChain)

/**
 实现原理:
   将调用以下三个方法的对象,包装成JXChainMakerh实例的一个属性,然后在JXChainMaker类中设置相应的属性
 */

- (void)jx_makeChains:(void(^)(JXChainMaker * maker))block {
    JXChainMaker *chainMaker = [[JXChainMaker alloc] init];
    chainMaker.innerView = self;
    if(block) {
        block(chainMaker);
    }
}

+ (instancetype)jx_makeChains:(void(^)(JXChainMaker * maker))block {
    UIView *commonView = [[self alloc] init];
    JXChainMaker *chainMaker = [[JXChainMaker alloc] init];
    chainMaker.innerView = commonView;
    if(block) {
        block(chainMaker);
    }
    return commonView;
}

- (JXChainMaker *)jx_makeChains {
    JXChainMaker *chainMaker = [[JXChainMaker alloc] init];
    chainMaker.innerView = self;
    return chainMaker;
}

@end
