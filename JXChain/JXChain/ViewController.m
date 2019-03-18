// Created by JX-You
// Email:17762541214@163.com
// Wechat:17762541214
// Github:https://github.com/JX-You

#import "ViewController.h"
#import "UIView+JXChain.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)task {
    NSLog(@"%s",__func__);
}

//- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    for (UIView *subview in self.view.subviews) {
//        if(subview.tag == 12) {
//            subview.transform = CGAffineTransformTranslate(subview.transform, 0, -10);
//            subview.contentScaleFactor = 2;
//        }
//    }
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImageView *imageView = [[UIImageView alloc] init];
    imageView
    .jx_makeChains
    .frame(CGRectMake(100, 100, 200, 100))
    .addToSuperView(self.view)
    .imageView_image([UIImage imageNamed:@"Celtics1"])
    .backgroundColor(UIColor.yellowColor)
    .highlightedImage([UIImage imageNamed:@"Snip20190318_1"]);
    
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        imageView.highlighted = YES;
    });
    
    
    
    
//    UITextView *textView = [[UITextView alloc] init];
//    textView
//    .jx_makeChains
//    .frame(CGRectMake(100, 100, 200, 400))
//    .textColor(UIColor.yellowColor)
//    .addToSuperView(self.view)
//    .backgroundColor(UIColor.redColor)
//    .text(@"我的是是少时诵诗书所付付付付付付付付付付772811382@qq.com")
//    .editable(YES)
//    .dataDetectorTypes(UIDataDetectorTypeAll);
//
//
    
    
    
    
//    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Snip20190318_1"]];
//
//    UITextField *textF = [[UITextField alloc] init];
//     textF
//    .jx_makeChains
//    .frame(CGRectMake(50, 200, 300, 50))
//    .backgroundColor(UIColor.redColor)
//    .attributedPlaceholder([[NSAttributedString alloc] initWithString:@"我是中国人" attributes:@{NSForegroundColorAttributeName : UIColor.yellowColor}])
//    .addToSuperView(self.view)
//    .borderStyle(UITextBorderStyleRoundedRect)
//    .clearsOnBeginEditing(YES)
//    .clearButtonMode(UITextFieldViewModeAlways)
//    .leftViewMode(UITextFieldViewModeAlways)
//    .leftView(imageView)
//    .rightViewMode(UITextFieldViewModeAlways)
//    .rightView(imageView);
    

//    UIButton *btn = [[UIButton alloc] init];
//    [btn jx_makeChains:^(JXChainMaker * _Nonnull maker) {
//        maker
//        .frame(CGRectMake(0, 200, 300, 200))
//        .backgroundColor(UIColor.redColor)
//        .addToSuperView(self.view)
//        .title(@"Snip20190318_1", UIControlStateNormal)
//        .titleColor(UIColor.yellowColor, UIControlStateNormal)
//        .button_image([UIImage imageNamed:@"Snip20190318_1"], UIControlStateNormal)
//        .imageEdgeInsets(UIEdgeInsetsMake(20, 0, 0, 0));
//    }];

//
//    UIView *redView = [UILabel new];
//    redView.jx_makeChains
//    .frame(CGRectMake(0, 0, 200, 20))
//    .backgroundColor(UIColor.redColor)
//    .tag(12)
//    .addToSuperView(btn);
//
//    NSLog(@"%zd",redView.tag);
//
//
//
//    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(task)];
//    [redView addGestureRecognizer:tap];
//
//
//
//
    
    

    
    
    
    
    
    
//
//    UIView *greenView = [UIView jx_makeChains:^(JXChainMaker * _Nonnull maker) {
//       maker
//        .frame(CGRectMake(300, 100, 40, 40))
//        .backgroundColor(UIColor.greenColor)
//        .addToSuperView(self.view);
//    }];
//    NSLog(@"%@",NSStringFromCGRect(greenView.frame));
//    greenView.tag = 20;
//
//    UILabel *label = [UILabel new];
//    label
//    .jx_makeChains
//    .frame(CGRectMake(100, 100, 50, 50))
//    .addToSuperView(self.view)
//    .backgroundColor(UIColor.redColor);
//
}


@end
