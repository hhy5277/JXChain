# JXChain
实现设置UI控件属性的链式编程,快速完成一个UI控件所有属性的设置
past:

now:
    UITextField *textF = [[UITextField alloc] init];
     textF
    .jx_makeChains
    .frame(CGRectMake(50, 200, 300, 50))
    .backgroundColor(UIColor.redColor)
    .attributedPlaceholder([[NSAttributedString alloc] initWithString:@"我是中国人" attributes:@{NSForegroundColorAttributeName : UIColor.yellowColor}])
    .addToSuperView(self.view)
    .borderStyle(UITextBorderStyleRoundedRect)
    .clearsOnBeginEditing(YES)
    .clearButtonMode(UITextFieldViewModeAlways)
    .leftViewMode(UITextFieldViewModeAlways)
    .leftView(imageView)
    .rightViewMode(UITextFieldViewModeAlways)
    .rightView(imageView);
    
