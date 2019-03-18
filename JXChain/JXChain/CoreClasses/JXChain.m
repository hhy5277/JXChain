// Created by JX-You
// Email:17762541214@163.com
// Wechat:17762541214
// Github:https://github.com/JX-You

#pragma mark -------------------------------------JXChain-------------------------------------------

#import "JXChain.h"

@interface JXChain ()
@property (nonatomic,   weak) UILabel *label;
@property (nonatomic,   weak) UIButton *buttion;
@property (nonatomic,   weak) UITextField *textField;
@property (nonatomic,   weak) UITextView *textView;
@property (nonatomic,   weak) UIImageView *imageView;
@property (nonatomic,   weak) UITableView *tableView;
@end

@implementation JXChain

- (JXChain *(^)(NSString *text))text{
    return ^(NSString * text){
        [self setText:text];
        return self;
    };
}

- (JXChain *(^)(float))font{
    return ^(float font){
        [self setFont:font];
        return self;
    };
}

- (JXChain *(^)(UIColor *))textColor{
    return ^(UIColor * textColor){
        [self setTextColor:textColor];
        return self;
    };
}

- (JXChain *(^)(uint32_t))textColorColorWithRgbValue{
    return ^(uint32_t rgbValue){
        [self setTextColorWithRgbValue:rgbValue];
        return self;
    };
}
- (JXChain *(^)(NSTextAlignment))textAlignment{
    return ^(NSTextAlignment textAlignment){
        [self setTextAlignment:textAlignment];
        return self;
    };
}
- (JXChain *(^)(NSLineBreakMode))lineBreakMode{
    return ^(NSLineBreakMode lineBreakMode){
        self.label.lineBreakMode = lineBreakMode;
        return self;
    };
}
- (JXChain *(^)(NSAttributedString *))attributedText{
    return ^(NSAttributedString * attributedText){
        [self setAttributedText:attributedText];
        return self;
    };
}
- (JXChain *(^)(BOOL))userInteractionEnabled{
    return ^(BOOL userInteractionEnabled){
        [self setUserInteractionEnabled:userInteractionEnabled];
        return self;
    };
}
- (JXChain *(^)(BOOL))enabled{
    return ^(BOOL enabled){
        [self setEnabled:enabled];
        return self;
    };
}
- (JXChain *(^)(NSInteger))numberOfLines{
    return ^(NSInteger numberOfLines){
        self.label.numberOfLines = numberOfLines;
        return self;
    };
}

- (JXChain *(^)(BOOL))adjustsFontSizeToFitWidth{
    return ^(BOOL adjustsFontSizeToFitWidth){
        self.label.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth;
        return self;
    };
}

- (JXChain *(^)(UIBaselineAdjustment))baselineAdjustment{
    return ^(UIBaselineAdjustment baselineAdjustment){
        self.label.baselineAdjustment = baselineAdjustment;
        return self;
    };
}


- (JXChain *(^)(NSString *, UIControlState))title {
    return ^(NSString *title, UIControlState state){
        [self.buttion setTitle:title forState:state];
        return self;
    };
}
- (JXChain *(^)(UIColor *, UIControlState))titleColor{
    return ^(UIColor *color, UIControlState state){
        [self.buttion setTitleColor:color forState:state];
        return self;
    };
}
- (JXChain *(^)(uint32_t, UIControlState))titleColorWithRgbValue{
    return ^(uint32_t rgbValue, UIControlState state){
        [self.buttion setTitleColor:[UIColor colorWithRGB:rgbValue] forState:state];
        return self;
    };
}
- (JXChain *(^)(UIImage *, UIControlState))image{
    return ^(UIImage *image,UIControlState state){
        [self.buttion setImage:image forState:state];
        return self;
    };
}
- (JXChain *(^)(UIImage *, UIControlState))backgroundImage{
    return ^(UIImage *backgroundImage,UIControlState state){
        [self.buttion setBackgroundImage:backgroundImage forState:state];
        return self;
    };
}
- (JXChain *(^)(NSAttributedString *, UIControlState))attributedTitle{
    return ^(NSAttributedString *title,UIControlState state){
        [self.buttion setAttributedTitle:title forState:state];
        return self;
    };
}
- (JXChain *(^)(UIEdgeInsets))contentEdgeInsets{
    return ^(UIEdgeInsets contentEdgeInsets){
        self.buttion.contentEdgeInsets = contentEdgeInsets;
        return self;
    };
}
- (JXChain *(^)(UIEdgeInsets))titleEdgeInsets{
    return ^(UIEdgeInsets titleEdgeInsets){
        self.buttion.titleEdgeInsets = titleEdgeInsets;
        return self;
    };
}
- (JXChain *(^)(UIEdgeInsets))imageEdgeInsets{
    return ^(UIEdgeInsets imageEdgeInsets){
        self.buttion.imageEdgeInsets = imageEdgeInsets;
        return self;
    };
}

- (JXChain *(^)(UITextBorderStyle))borderStyle{
    return ^(UITextBorderStyle borderStyle){
        self.textField.borderStyle = borderStyle;
        return self;
    };
}
- (JXChain *(^)(NSString *))placeholder{
    return ^(NSString *placeholder){
        self.textField.placeholder = placeholder;
        return self;
    };
}
- (JXChain *(^)(NSAttributedString *))attributedPlaceholder{
    return ^(NSAttributedString *attributedPlaceholder){
        self.textField.attributedPlaceholder = attributedPlaceholder;
        return self;
    };
}
- (JXChain *(^)(BOOL))clearsOnBeginEditing{
    return ^(BOOL clearsOnBeginEditing){
        self.textField.clearsOnBeginEditing = clearsOnBeginEditing;
        return self;
    };
}
- (JXChain *(^)(id<UITextFieldDelegate>))textFliedDelegate{
    return ^(id<UITextFieldDelegate>delegate){
        self.textField.delegate = delegate;
        return self;
    };
}
- (JXChain *(^)(UIImage *))background{
    return ^(UIImage *background){
        self.textField.background = background;
        return self;
    };
}
- (JXChain *(^)(UIImage *))disabledBackground{
    return ^(UIImage *disabledBackground){
        self.textField.disabledBackground = disabledBackground;
        return self;
    };
}
- (JXChain *(^)(UITextFieldViewMode))clearButtonMode{
    return ^(UITextFieldViewMode clearButtonMode){
        self.textField.clearButtonMode = clearButtonMode;
        return self;
    };
}
- (JXChain *(^)(UIView *))leftView{
    return ^(UIView *leftView){
        self.textField.leftView = leftView;
        return self;
    };
}
- (JXChain *(^)(UITextFieldViewMode))leftViewMode{
    return ^(UITextFieldViewMode leftViewMode){
        self.textField.leftViewMode = leftViewMode;
        return self;
    };
}
- (JXChain *(^)(UIView *))rightView{
    return ^(UIView *rightView){
        self.textField.rightView = rightView;
        return self;
    };
}
- (JXChain *(^)(UITextFieldViewMode))rightViewMode{
    return ^(UITextFieldViewMode rightViewMode){
        self.textField.rightViewMode = rightViewMode;
        return self;
    };
}
- (JXChain *(^)(id<UITextViewDelegate>))textViewdDelegate{
    return ^(id<UITextViewDelegate>delegate){
        self.textView.delegate = delegate;
        return self;
    };
}
- (JXChain *(^)(NSRange))selectedRange{
    return ^(NSRange selectedRange){
        self.textView.selectedRange = selectedRange;
        return self;
    };
}
- (JXChain *(^)(BOOL))editable{
    return ^(BOOL editable){
        self.textView.editable = editable;
        return self;
    };
}
- (JXChain *(^)(BOOL))selectable{
    return ^(BOOL selectable){
        self.textView.selectable = selectable;
        return self;
    };
}
- (JXChain *(^)(UIDataDetectorTypes))dataDetectorTypes{
    return ^(UIDataDetectorTypes dataDetectorTypes){
        self.textView.dataDetectorTypes = dataDetectorTypes;
        return self;
    };
}
- (JXChain *(^)(UIImage *))img{
    return ^(UIImage *img){
        self.imageView.image = img;
        return self;
    };
}
- (JXChain *(^)(UIImage *))imhighlightedImageg{
    return ^(UIImage *imhighlightedImageg){
        self.imageView.highlightedImage = imhighlightedImageg;
        return self;
    };
}
- (JXChain *(^)(BOOL ))highlighted{
    return ^(BOOL highlighted){
        self.imageView.highlighted = highlighted;
        return self;
    };
}
-(JXChain *(^)(NSArray<UIImage *> *))animationImages{
    return ^(NSArray<UIImage *> *animationImages){
        self.imageView.animationImages = animationImages;
        return self;
    };
}
- (JXChain *(^)(NSArray<UIImage *> *))highlightedAnimationImages{
    return ^(NSArray<UIImage *> *highlightedAnimationImages){
        self.imageView.highlightedAnimationImages = highlightedAnimationImages;
        return self;
    };
}
- (JXChain *(^)(NSTimeInterval))animationDuration{
    return ^(NSTimeInterval animationDuration){
        self.imageView.animationDuration = animationDuration;
        return self;
    };
}
- (JXChain *(^)(NSInteger))animationRepeatCount{
    return ^(NSInteger animationRepeatCount){
        self.imageView.animationRepeatCount = animationRepeatCount;
        return self;
    };
}

- (JXChain *(^)(id<UITableViewDataSource>))tableViewDataSource{
    return ^(id<UITableViewDataSource> dataSource){
        self.tableView.dataSource = dataSource;
        return self;
    };
}
- (JXChain *(^)(id<UITableViewDelegate>))tableViewDelegate{
    return ^(id<UITableViewDelegate> delegate){
        self.tableView.delegate = delegate;
        return self;
    };
}
- (JXChain *(^)(CGFloat))rowHeight{
    return ^(CGFloat rowHeight){
        self.tableView.rowHeight = rowHeight;
        return self;
    };
}
- (JXChain *(^)(CGFloat))sectionHeaderHeight{
    return ^(CGFloat sectionHeaderHeight){
        self.tableView.sectionHeaderHeight = sectionHeaderHeight;
        return self;
    };
}
- (JXChain *(^)(CGFloat))sectionFooterHeight{
    return ^(CGFloat sectionFooterHeight){
        self.tableView.sectionFooterHeight = sectionFooterHeight;
        return self;
    };
}
- (JXChain *(^)(CGFloat))estimatedRowHeight{
    return ^(CGFloat estimatedRowHeight){
        self.tableView.estimatedRowHeight = estimatedRowHeight;
        return self;
    };
}
-(JXChain *(^)(CGFloat))estimatedSectionHeaderHeight{
    return ^(CGFloat estimatedSectionHeaderHeight){
        self.tableView.estimatedSectionHeaderHeight = estimatedSectionHeaderHeight;
        return self;
    };
}
-(JXChain *(^)(CGFloat))estimatedSectionFooterHeight{
    return ^(CGFloat estimatedSectionFooterHeight){
        self.tableView.estimatedSectionFooterHeight = estimatedSectionFooterHeight;
        return self;
    };
}
- (JXChain *(^)(UIEdgeInsets))separatorInset{
    return ^(UIEdgeInsets separatorInset){
        self.tableView.separatorInset = separatorInset;
        return self;
    };
}
- (JXChain *(^)(UIView *))tableHeaderView{
    return ^(UIView *tableHeaderView){
        self.tableView.tableHeaderView = tableHeaderView;
        return self;
    };
}
- (JXChain *(^)(UIView *))tableFooterView{
    return ^(UIView *tableFooterView){
        self.tableView.tableFooterView = tableFooterView;
        return self;
    };
}

//MARK: -- Private method
- (void)setText:(NSString * )text{
    if (self.label) {
        self.label.text = text;
    }else if (self.textField) {
        self.textField.text = text;
    }else if (self.textView){
        self.textView.text = text;
    }
}
- (void)setFont:(float)font{
    if (self.label) {
        self.label.font = [UIFont systemFontOfSize:font];
    }else if (self.textField) {
        self.textField.font = [UIFont systemFontOfSize:font];
    }else if (self.buttion){
        self.buttion.titleLabel.font = [UIFont systemFontOfSize:font];
    }else if (self.textView){
        self.textView.font = [UIFont systemFontOfSize:font];
    }
}
- (void)setTextColor:(UIColor *)textColor{
    if (self.label) {
        self.label.textColor = textColor;
    }else if (self.textField) {
        self.textField.textColor = textColor;
    }else if (self.textView){
        self.textView.textColor = textColor;
    }
}
- (void)setTextColorWithRgbValue:(uint32_t)rgbValue{
    if (self.label) {
        self.label.textColor = [UIColor colorWithRGB:rgbValue];
    }else if (self.textField) {
        self.textField.textColor = [UIColor colorWithRGB:rgbValue];
    }else if (self.textView){
        self.textView.textColor = [UIColor colorWithRGB:rgbValue];
    }
}
- (void)setTextAlignment:(NSTextAlignment)textAlignment{
    if (self.label) {
        self.label.textAlignment = textAlignment;
    }else if (self.buttion){
        self.buttion.titleLabel.textAlignment = textAlignment;
    }else if (self.textField){
        self.textField.textAlignment = textAlignment;
    }else if (self.textView){
        self.textView.textAlignment = textAlignment;
    }
}
- (void)setAttributedText:(NSAttributedString *)attributedText{
    if (self.label) {
        self.label.attributedText = attributedText;
    }else if (self.textField){
        self.textField.attributedText = attributedText;
    }else if (self.textView){
        self.textView.attributedText = attributedText;
    }
}
- (void)setUserInteractionEnabled:(BOOL)userInteractionEnabled{
    if (self.innerView) {
        self.innerView.userInteractionEnabled = userInteractionEnabled;
    }
}
- (void)setEnabled:(BOOL)enabled{
    if (self.label) {
        self.label.enabled = enabled;
    }else if (self.buttion){
        self.buttion.enabled = enabled;
    }else if (self.textField){
        self.textField.enabled = enabled;
    }
}

- (void)setInnerView:(UIView *)innerView {
    _innerView = innerView;
    
    if ([_innerView isKindOfClass:UILabel.class]) {
        _label = (UILabel *)_innerView;
    } else if ([_innerView isKindOfClass:UIButton.class]){
        _buttion = (UIButton *)_innerView;
    } else if ([_innerView isKindOfClass:UITextField.class]){
        _textField = (UITextField *)_innerView;
    } else if ([_innerView isKindOfClass:UITextView.class]){
        _textView = (UITextView *)_innerView;
    } else if ([_innerView isKindOfClass:[UITableView class]]){
        _tableView = (UITableView *)_innerView;
    }
}

- (void)dealloc{
    NSLog(@"%s",__func__);
}

@end

#pragma mark -------------------------------------JXChain (PublicProperty)-------------------------------------------

@implementation JXChain (PublicProperty)

- (JXChain *(^)(CGRect))frame {
    return ^(CGRect frame){
        self.innerView.frame = frame;
        return self;
    };
}
- (JXChain *(^)(CGRect))bounds {
    return ^(CGRect bounds){
        self.innerView.bounds = bounds;
        return self;
    };
}
- (JXChain *(^)(CGPoint))center {
    return ^(CGPoint center){
        self.innerView.center = center;
        return self;
    };
}
- (JXChain *(^)(CGAffineTransform))transform {
    return ^(CGAffineTransform transform) {
        self.innerView.transform = transform;
        return self;
    };
}
- (JXChain *(^)(CGFloat))contentScaleFactor{
    return ^(CGFloat contentScaleFactor){
        self.innerView.contentScaleFactor = contentScaleFactor;
        return self;
    };
}
- (JXChain *(^)(BOOL))multipleTouchEnabled{
    return ^(BOOL multipleTouchEnabled){
        self.innerView.multipleTouchEnabled = multipleTouchEnabled;
        return self;
    };
}
- (JXChain *(^)(UIColor *))tintColor{
    return ^(UIColor *tintColor){
        self.innerView.tintColor = tintColor;
        return self;
    };
}
- (JXChain *(^)(uint32_t))tintColorWithRgbValue{
    return ^(uint32_t rgbValue){
        self.innerView.tintColor = [UIColor colorWithRGB:rgbValue];
        return self;
    };
}

- (JXChain *(^)(UIColor *))backgroundColor{
    return ^(UIColor *backgroundColor){
        self.innerView.backgroundColor = backgroundColor;
        return self;
    };
}
- (JXChain *(^)(uint32_t))backgroundColorWithRgbValue{
    return ^(uint32_t rgbValue){
        self.innerView.backgroundColor = [UIColor colorWithRGB:rgbValue];
        return self;
    };
}
- (JXChain *(^)(uint32_t, CGFloat))backgroundColorWithRgbaValue{
    return ^(uint32_t rgbValue,CGFloat alpha){
        self.innerView.backgroundColor = [UIColor colorWithRGB:rgbValue alpha:alpha];
        return self;
    };
}
- (JXChain *(^)(BOOL))clipsToBounds{
    return ^(BOOL clipsToBounds){
        self.innerView.clipsToBounds = clipsToBounds;
        return self;
    };
}
- (JXChain *(^)(UIView *))addToSuperView{
    return ^(UIView *superView){
        [superView addSubview:self.innerView];
        return self;
    };
}
@end

#pragma mark -------------------------------------JXChain (JXCALayer)-------------------------------------------


@implementation JXChain (JXCALayer)
- (JXChain *(^)(CGFloat))cornerRadius{
    return ^(CGFloat cornerRadius){
        self.innerView.layer.cornerRadius = cornerRadius;
        return self;
    };
}
- (JXChain *(^)(CGFloat))borderWidth{
    return ^(CGFloat borderWidth){
        self.innerView.layer.borderWidth = borderWidth;
        return self;
    };
}
- (JXChain *(^)(CGColorRef))borderColor{
    return ^(CGColorRef borderColor){
        self.innerView.layer.borderColor = borderColor;
        return self;
    };
}
@end

#pragma mark -------------------------------------UIColor (RGBValue)-------------------------------------------


@implementation UIColor (RGBValue)

+ (UIColor *)colorWithRGB:(uint32_t)rgbValue {
    return [UIColor colorWithRed:((rgbValue & 0xFF0000) >> 16) / 255.0f
                           green:((rgbValue & 0xFF00) >> 8) / 255.0f
                            blue:(rgbValue & 0xFF) / 255.0f
                           alpha:1];
}
+ (UIColor *)colorWithRGB:(uint32_t)rgbValue alpha:(CGFloat)alpha{
    return [UIColor colorWithRed:((rgbValue & 0xFF0000) >> 16) / 255.0f
                           green:((rgbValue & 0xFF00) >> 8) / 255.0f
                            blue:(rgbValue & 0xFF) / 255.0f
                           alpha:alpha];
}
@end
