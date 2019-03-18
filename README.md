# JXChain
实现设置UI控件属性的链式编程,快速完成一个UI控件所有属性的设置
# past:
    ```
    UITextField *textF = [[UITextField alloc] init];  
    textF.frame = CGRectMake(50, 200, 300, 50);  
    textF.backgroundColor = UIColor.redColor;  
    textF.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"我是中国人" attributes:@{NSForegroundColorAttributeName :   UIColor.yellowColor}];  
    textF.borderStyle = UITextBorderStyleRoundedRect;  
    textF.clearButtonMode = UITextFieldViewModeAlways;  
    textF.leftViewMode = UITextFieldViewModeAlways;  
    textF.leftView = imageView;  
    textF.rightViewMode = UITextFieldViewModeAlways;  
    textF.rightView = imageView;  
    [self.view addSubview:textF];  
    ```

# now:
    * 方式1:
    ```
    UITextField *textF = [[UITextField alloc] init];  
     textF  
    .jx_makeChains  
    .frame(CGRectMake(50, 200, 300, 50))  
    .backgroundColor(UIColor.redColor)  
    .attributedPlaceholder([[NSAttributedString alloc] initWithString:@"我是中国人" attributes:@{NSForegroundColorAttributeName :    
    UIColor.yellowColor}])  
    .addToSuperView(self.view)  
    .borderStyle(UITextBorderStyleRoundedRect)  
    .clearsOnBeginEditing(YES)  
    .clearButtonMode(UITextFieldViewModeAlways)  
    .leftViewMode(UITextFieldViewModeAlways)  
    .leftView(imageView)  
    .rightViewMode(UITextFieldViewModeAlways)  
    .rightView(imageView);  
    ```
    * 方式2:
        UIButton *btn = [[UIButton alloc] init];  
        [btn jx_makeChains:^(JXChainMaker * _Nonnull maker) {  
        maker  
        .frame(CGRectMake(0, 200, 300, 200))  
        .backgroundColor(UIColor.redColor)  
        .addToSuperView(self.view)  
        .title(@"Snip20190318_1", UIControlStateNormal)  
        .titleColor(UIColor.yellowColor, UIControlStateNormal)  
        .button_image([UIImage imageNamed:@"Snip20190318_1"], UIControlStateNormal)  
        .imageEdgeInsets(UIEdgeInsetsMake(20, 0, 0, 0));  
    }];  
    * 方式3:
    
