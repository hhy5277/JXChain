// Created by JX-You
// Email:17762541214@163.com
// Wechat:17762541214
// Github:https://github.com/JX-You

#import "UIView+Bridge.h"
#import <objc/runtime.h>

@implementation UIView (Bridge)

- (void)jx_makeChains:(void(^)(JXChain * make))block {
    JXChain *chainMaker = [[JXChain alloc] init];
    chainMaker.innerView = self;
    block(chainMaker);
}

- (JXChain *)jx_makeChains {
    JXChain *chain = [[JXChain alloc] init];
    chain.innerView = self;
    return chain;
}

- (JXChain *)ownMake{
    return objc_getAssociatedObject(self, _cmd);
}

- (void)setOwnMake:(JXChain *)ownMake{
    objc_setAssociatedObject(self, @selector(ownMake), ownMake, OBJC_ASSOCIATION_RETAIN);
}

@end
