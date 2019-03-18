// Created by JX-You
// Email:17762541214@163.com
// Wechat:17762541214
// Github:https://github.com/JX-You

#import "ViewController.h"
#import "UIView+Bridge.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *label = [UILabel new];
    
    label.jx_makeChains
    .frame(CGRectMake(100, 100, 50, 50))
    .addToSuperView(self.view)
    .backgroundColor(UIColor.redColor);
    
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn jx_makeChains:^(JXChain * _Nonnull make) {
        make.frame(CGRectMake(200, 200, 100, 100))
        .addToSuperView(self.view)
        .backgroundColor(UIColor.yellowColor)
        .attributedTitle([[NSAttributedString alloc] initWithString:@"234" attributes:@{}],UIControlStateNormal);
    }];
    
}


@end
