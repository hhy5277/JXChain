// Created by JX-You
// Email:17762541214@163.com
// Wechat:17762541214
// Github:https://github.com/JX-You

#pragma mark ---------------------------JXChainMaker---------------------------------

#import "JXChainMaker.h"

@interface JXChainMaker ()
@property (nonatomic, weak) UILabel *label;
@property (nonatomic, weak) UIButton *buttion;
@property (nonatomic, weak) UITextField *textField;
@property (nonatomic, weak) UITextView *textView;
@property (nonatomic, weak) UIImageView *imageView;
@property (nonatomic, weak) UITableView *tableView;
@end

@implementation JXChainMaker

#pragma mark - 公开方法

- (JXChainMaker *(^)(NSString *text))text {
    return ^(NSString * text){
        [self setText:text];
        return self;
    };
}

- (JXChainMaker *(^)(float))font {
    return ^(float font){
        [self setFont:font];
        return self;
    };
}

- (JXChainMaker *(^)(UIColor *))textColor {
    return ^(UIColor * textColor) {
        [self setTextColor:textColor];
        return self;
    };
}

- (JXChainMaker *(^)(uint32_t))textColorColorWithRgbValue {
    return ^(uint32_t rgbValue) {
        [self setTextColorWithRgbValue:rgbValue];
        return self;
    };
}
- (JXChainMaker *(^)(NSTextAlignment))textAlignment {
    return ^(NSTextAlignment textAlignment) {
        [self setTextAlignment:textAlignment];
        return self;
    };
}
- (JXChainMaker *(^)(NSLineBreakMode))lineBreakMode {
    return ^(NSLineBreakMode lineBreakMode) {
        self.label.lineBreakMode = lineBreakMode;
        return self;
    };
}
- (JXChainMaker *(^)(NSAttributedString *))attributedText {
    return ^(NSAttributedString * attributedText) {
        [self setAttributedText:attributedText];
        return self;
    };
}
- (JXChainMaker *(^)(BOOL))userInteractionEnabled {
    return ^(BOOL userInteractionEnabled) {
        [self setUserInteractionEnabled:userInteractionEnabled];
        return self;
    };
}
- (JXChainMaker *(^)(BOOL))enabled {
    return ^(BOOL enabled) {
        [self setEnabled:enabled];
        return self;
    };
}
- (JXChainMaker *(^)(NSInteger))numberOfLines {
    return ^(NSInteger numberOfLines) {
        self.label.numberOfLines = numberOfLines;
        return self;
    };
}

- (JXChainMaker *(^)(BOOL))adjustsFontSizeToFitWidth {
    return ^(BOOL adjustsFontSizeToFitWidth) {
        self.label.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth;
        return self;
    };
}

- (JXChainMaker *(^)(UIBaselineAdjustment))baselineAdjustment {
    return ^(UIBaselineAdjustment baselineAdjustment) {
        self.label.baselineAdjustment = baselineAdjustment;
        return self;
    };
}

- (JXChainMaker *(^)(NSString *, UIControlState))title {
    return ^(NSString *title, UIControlState state) {
        [self.buttion setTitle:title forState:state];
        return self;
    };
}

- (JXChainMaker *(^)(UIColor *, UIControlState))titleColor {
    return ^(UIColor *color, UIControlState state) {
        [self.buttion setTitleColor:color forState:state];
        return self;
    };
}
- (JXChainMaker *(^)(uint32_t, UIControlState))titleColorWithRgbValue {
    return ^(uint32_t rgbValue, UIControlState state) {
        [self.buttion setTitleColor:[UIColor colorWithRGB:rgbValue] forState:state];
        return self;
    };
}
- (JXChainMaker *(^)(UIImage *, UIControlState))button_image {
    return ^(UIImage *button_image,UIControlState state) {
        [self.buttion setImage:button_image forState:state];
        return self;
    };
}
- (JXChainMaker *(^)(UIImage *, UIControlState))backgroundImage {
    return ^(UIImage *backgroundImage,UIControlState state) {
        [self.buttion setBackgroundImage:backgroundImage forState:state];
        return self;
    };
}
- (JXChainMaker *(^)(NSAttributedString *, UIControlState))attributedTitle {
    return ^(NSAttributedString *title,UIControlState state) {
        [self.buttion setAttributedTitle:title forState:state];
        return self;
    };
}
- (JXChainMaker *(^)(UIEdgeInsets))contentEdgeInsets {
    return ^(UIEdgeInsets contentEdgeInsets) {
        self.buttion.contentEdgeInsets = contentEdgeInsets;
        return self;
    };
}
- (JXChainMaker *(^)(UIEdgeInsets))titleEdgeInsets {
    return ^(UIEdgeInsets titleEdgeInsets) {
        self.buttion.titleEdgeInsets = titleEdgeInsets;
        return self;
    };
}
- (JXChainMaker *(^)(UIEdgeInsets))imageEdgeInsets {
    return ^(UIEdgeInsets imageEdgeInsets) {
        self.buttion.imageEdgeInsets = imageEdgeInsets;
        return self;
    };
}

- (JXChainMaker *(^)(UITextBorderStyle))borderStyle {
    return ^(UITextBorderStyle borderStyle) {
        self.textField.borderStyle = borderStyle;
        return self;
    };
}
- (JXChainMaker *(^)(NSString *))placeholder {
    return ^(NSString *placeholder) {
        self.textField.placeholder = placeholder;
        return self;
    };
}
- (JXChainMaker *(^)(NSAttributedString *))attributedPlaceholder {
    return ^(NSAttributedString *attributedPlaceholder) {
        self.textField.attributedPlaceholder = attributedPlaceholder;
        return self;
    };
}
- (JXChainMaker *(^)(BOOL))clearsOnBeginEditing {
    return ^(BOOL clearsOnBeginEditing) {
        self.textField.clearsOnBeginEditing = clearsOnBeginEditing;
        return self;
    };
}
- (JXChainMaker *(^)(id<UITextFieldDelegate>))textFieldDelegate {
    return ^(id<UITextFieldDelegate>delegate) {
        self.textField.delegate = delegate;
        return self;
    };
}
- (JXChainMaker *(^)(UIImage *))background {
    return ^(UIImage *background) {
        self.textField.background = background;
        return self;
    };
}
- (JXChainMaker *(^)(UIImage *))disabledBackground {
    return ^(UIImage *disabledBackground) {
        self.textField.disabledBackground = disabledBackground;
        return self;
    };
}
- (JXChainMaker *(^)(UITextFieldViewMode))clearButtonMode {
    return ^(UITextFieldViewMode clearButtonMode) {
        self.textField.clearButtonMode = clearButtonMode;
        return self;
    };
}
- (JXChainMaker *(^)(UIView *))leftView {
    return ^(UIView *leftView) {
        self.textField.leftView = leftView;
        return self;
    };
}
- (JXChainMaker *(^)(UITextFieldViewMode))leftViewMode {
    return ^(UITextFieldViewMode leftViewMode) {
        self.textField.leftViewMode = leftViewMode;
        return self;
    };
}
- (JXChainMaker *(^)(UIView *))rightView {
    return ^(UIView *rightView) {
        self.textField.rightView = rightView;
        return self;
    };
}
- (JXChainMaker *(^)(UITextFieldViewMode))rightViewMode {
    return ^(UITextFieldViewMode rightViewMode) {
        self.textField.rightViewMode = rightViewMode;
        return self;
    };
}
- (JXChainMaker *(^)(id<UITextViewDelegate>))textViewdDelegate {
    return ^(id<UITextViewDelegate>delegate) {
        self.textView.delegate = delegate;
        return self;
    };
}
- (JXChainMaker *(^)(NSRange))selectedRange {
    return ^(NSRange selectedRange) {
        self.textView.selectedRange = selectedRange;
        return self;
    };
}
- (JXChainMaker *(^)(BOOL))editable {
    return ^(BOOL editable) {
        self.textView.editable = editable;
        return self;
    };
}
- (JXChainMaker *(^)(BOOL))selectable {
    return ^(BOOL selectable) {
        self.textView.selectable = selectable;
        return self;
    };
}
- (JXChainMaker *(^)(UIDataDetectorTypes))dataDetectorTypes {
    return ^(UIDataDetectorTypes dataDetectorTypes) {
        self.textView.dataDetectorTypes = dataDetectorTypes;
        return self;
    };
}
- (JXChainMaker *(^)(UIImage *))imageView_image {
    return ^(UIImage *imageView_image) {
        self.imageView.image = imageView_image;
        return self;
    };
}
- (JXChainMaker *(^)(UIImage *))highlightedImage {
    return ^(UIImage *highlightedImage){
        self.imageView.highlightedImage = highlightedImage;
        return self;
    };
}
- (JXChainMaker *(^)(BOOL ))highlighted {
    return ^(BOOL highlighted) {
        self.imageView.highlighted = highlighted;
        return self;
    };
}
-(JXChainMaker *(^)(NSArray<UIImage *> *))animationImages {
    return ^(NSArray<UIImage *> *animationImages) {
        self.imageView.animationImages = animationImages;
        return self;
    };
}
- (JXChainMaker *(^)(NSArray<UIImage *> *))highlightedAnimationImages {
    return ^(NSArray<UIImage *> *highlightedAnimationImages) {
        self.imageView.highlightedAnimationImages = highlightedAnimationImages;
        return self;
    };
}
- (JXChainMaker *(^)(NSTimeInterval))animationDuration {
    return ^(NSTimeInterval animationDuration) {
        self.imageView.animationDuration = animationDuration;
        return self;
    };
}
- (JXChainMaker *(^)(NSInteger))animationRepeatCount {
    return ^(NSInteger animationRepeatCount) {
        self.imageView.animationRepeatCount = animationRepeatCount;
        return self;
    };
}

- (JXChainMaker *(^)(id<UITableViewDataSource>))tableViewDataSource {
    return ^(id<UITableViewDataSource> dataSource) {
        self.tableView.dataSource = dataSource;
        return self;
    };
}
- (JXChainMaker *(^)(id<UITableViewDelegate>))tableViewDelegate {
    return ^(id<UITableViewDelegate> delegate) {
        self.tableView.delegate = delegate;
        return self;
    };
}
- (JXChainMaker *(^)(CGFloat))rowHeight {
    return ^(CGFloat rowHeight) {
        self.tableView.rowHeight = rowHeight;
        return self;
    };
}
- (JXChainMaker *(^)(CGFloat))sectionHeaderHeight {
    return ^(CGFloat sectionHeaderHeight) {
        self.tableView.sectionHeaderHeight = sectionHeaderHeight;
        return self;
    };
}
- (JXChainMaker *(^)(CGFloat))sectionFooterHeight {
    return ^(CGFloat sectionFooterHeight) {
        self.tableView.sectionFooterHeight = sectionFooterHeight;
        return self;
    };
}
- (JXChainMaker *(^)(CGFloat))estimatedRowHeight {
    return ^(CGFloat estimatedRowHeight) {
        self.tableView.estimatedRowHeight = estimatedRowHeight;
        return self;
    };
}
-(JXChainMaker *(^)(CGFloat))estimatedSectionHeaderHeight {
    return ^(CGFloat estimatedSectionHeaderHeight) {
        self.tableView.estimatedSectionHeaderHeight = estimatedSectionHeaderHeight;
        return self;
    };
}
-(JXChainMaker *(^)(CGFloat))estimatedSectionFooterHeight {
    return ^(CGFloat estimatedSectionFooterHeight) {
        self.tableView.estimatedSectionFooterHeight = estimatedSectionFooterHeight;
        return self;
    };
}
- (JXChainMaker *(^)(UIEdgeInsets))separatorInset {
    return ^(UIEdgeInsets separatorInset) {
        self.tableView.separatorInset = separatorInset;
        return self;
    };
}
- (JXChainMaker *(^)(UIView *))tableHeaderView {
    return ^(UIView *tableHeaderView) {
        self.tableView.tableHeaderView = tableHeaderView;
        return self;
    };
}
- (JXChainMaker *(^)(UIView *))tableFooterView {
    return ^(UIView *tableFooterView) {
        self.tableView.tableFooterView = tableFooterView;
        return self;
    };
}

#pragma mark - 私有方法

- (void)setText:(NSString * )text {
    if (self.label) {
        self.label.text = text;
    }else if (self.textField) {
        self.textField.text = text;
    }else if (self.textView) {
        self.textView.text = text;
    }
}
- (void)setFont:(float)font {
    if (self.label) {
        self.label.font = [UIFont systemFontOfSize:font];
    }else if (self.textField) {
        self.textField.font = [UIFont systemFontOfSize:font];
    }else if (self.buttion) {
        self.buttion.titleLabel.font = [UIFont systemFontOfSize:font];
    }else if (self.textView) {
        self.textView.font = [UIFont systemFontOfSize:font];
    }
}
- (void)setTextColor:(UIColor *)textColor {
    if (self.label) {
        self.label.textColor = textColor;
    }else if (self.textField) {
        self.textField.textColor = textColor;
    }else if (self.textView) {
        self.textView.textColor = textColor;
    }
}
- (void)setTextColorWithRgbValue:(uint32_t)rgbValue {
    if (self.label) {
        self.label.textColor = [UIColor colorWithRGB:rgbValue];
    }else if (self.textField) {
        self.textField.textColor = [UIColor colorWithRGB:rgbValue];
    }else if (self.textView) {
        self.textView.textColor = [UIColor colorWithRGB:rgbValue];
    }
}
- (void)setTextAlignment:(NSTextAlignment)textAlignment {
    if (self.label) {
        self.label.textAlignment = textAlignment;
    }else if (self.buttion) {
        self.buttion.titleLabel.textAlignment = textAlignment;
    }else if (self.textField) {
        self.textField.textAlignment = textAlignment;
    }else if (self.textView) {
        self.textView.textAlignment = textAlignment;
    }
}
- (void)setAttributedText:(NSAttributedString *)attributedText {
    if (self.label) {
        self.label.attributedText = attributedText;
    }else if (self.textField) {
        self.textField.attributedText = attributedText;
    }else if (self.textView) {
        self.textView.attributedText = attributedText;
    }
}
- (void)setUserInteractionEnabled:(BOOL)userInteractionEnabled {
    if (self.innerView) {
        self.innerView.userInteractionEnabled = userInteractionEnabled;
    }
}
- (void)setEnabled:(BOOL)enabled {
    if (self.label) {
        self.label.enabled = enabled;
    }else if (self.buttion) {
        self.buttion.enabled = enabled;
    }else if (self.textField) {
        self.textField.enabled = enabled;
    }
}

- (void)setInnerView:(UIView *)innerView {
    // 设置innerView时,判断其类型,并赋值给相应的成员变量
    _innerView = innerView;
    if ([_innerView isKindOfClass:UILabel.class]) {
        _label = (UILabel *)_innerView;
    } else if ([_innerView isKindOfClass:UIButton.class]) {
        _buttion = (UIButton *)_innerView;
    } else if ([_innerView isKindOfClass:UITextField.class]) {
        _textField = (UITextField *)_innerView;
    } else if ([_innerView isKindOfClass:UITextView.class]) {
        _textView = (UITextView *)_innerView;
    } else if ([_innerView isKindOfClass:[UITableView class]]) {
        _tableView = (UITableView *)_innerView;
    } else if ([_innerView isKindOfClass:[UIImageView class]]) {
        _imageView = (UIImageView *)_innerView;
    }
}

- (void)dealloc{
    NSLog(@"%s",__func__);
}

@end

#pragma mark ---------------------------JXChainMaker (CommonProperty)---------------------------------

@implementation JXChainMaker (CommonProperty)

- (JXChainMaker *(^)(NSInteger tag))tag {
    return ^(NSInteger tag) {
        self.innerView.tag = tag;
        return self;
    };
}

- (JXChainMaker *(^)(CGRect))frame {
    return ^(CGRect frame) {
        self.innerView.frame = frame;
        return self;
    };
}

- (JXChainMaker *(^)(CGRect))bounds {
    return ^(CGRect bounds) {
        self.innerView.bounds = bounds;
        return self;
    };
}

- (JXChainMaker *(^)(CGPoint))center {
    return ^(CGPoint center) {
        self.innerView.center = center;
        return self;
    };
}
- (JXChainMaker *(^)(CGAffineTransform))transform {
    return ^(CGAffineTransform transform) {
        self.innerView.transform = transform;
        return self;
    };
}
- (JXChainMaker *(^)(CGFloat))contentScaleFactor {
    return ^(CGFloat contentScaleFactor) {
        self.innerView.contentScaleFactor = contentScaleFactor;
        return self;
    };
}
- (JXChainMaker *(^)(BOOL))multipleTouchEnabled {
    return ^(BOOL multipleTouchEnabled) {
        self.innerView.multipleTouchEnabled = multipleTouchEnabled;
        return self;
    };
}
- (JXChainMaker *(^)(UIColor *))tintColor {
    return ^(UIColor *tintColor) {
        self.innerView.tintColor = tintColor;
        return self;
    };
}
- (JXChainMaker *(^)(uint32_t))tintColorWithRgbValue {
    return ^(uint32_t rgbValue) {
        self.innerView.tintColor = [UIColor colorWithRGB:rgbValue];
        return self;
    };
}

- (JXChainMaker *(^)(UIColor *))backgroundColor {
    return ^(UIColor *backgroundColor) {
        self.innerView.backgroundColor = backgroundColor;
        return self;
    };
}
- (JXChainMaker *(^)(uint32_t))backgroundColorWithRgbValue {
    return ^(uint32_t rgbValue) {
        self.innerView.backgroundColor = [UIColor colorWithRGB:rgbValue];
        return self;
    };
}
- (JXChainMaker *(^)(uint32_t, CGFloat))backgroundColorWithRgbaValue {
    return ^(uint32_t rgbValue,CGFloat alpha) {
        self.innerView.backgroundColor = [UIColor colorWithRGB:rgbValue alpha:alpha];
        return self;
    };
}
- (JXChainMaker *(^)(BOOL))clipsToBounds {
    return ^(BOOL clipsToBounds) {
        self.innerView.clipsToBounds = clipsToBounds;
        return self;
    };
}
- (JXChainMaker *(^)(UIView *))addToSuperView {
    return ^(UIView *superView) {
        [superView addSubview:self.innerView];
        return self;
    };
}
@end

#pragma mark ---------------------------JXChainMaker (JXCALayer)---------------------------------


@implementation JXChainMaker (JXCALayer)
- (JXChainMaker *(^)(CGFloat))cornerRadius {
    return ^(CGFloat cornerRadius) {
        self.innerView.layer.cornerRadius = cornerRadius;
        return self;
    };
}
- (JXChainMaker *(^)(CGFloat))borderWidth {
    return ^(CGFloat borderWidth) {
        self.innerView.layer.borderWidth = borderWidth;
        return self;
    };
}
- (JXChainMaker *(^)(CGColorRef))borderColor {
    return ^(CGColorRef borderColor){
        self.innerView.layer.borderColor = borderColor;
        return self;
    };
}
@end

#pragma mark ---------------------------UIColor (RGBValue)---------------------------------


@implementation UIColor (RGBValue)

/**
 根据传入的16进制RGB转换为对应的UIColor实例
 */
+ (UIColor *)colorWithRGB:(uint32_t)rgbValue {
    return [UIColor colorWithRed:((rgbValue & 0xFF0000) >> 16) / 255.0f
                           green:((rgbValue & 0xFF00) >> 8) / 255.0f
                            blue:(rgbValue & 0xFF) / 255.0f
                           alpha:1];
}


/**
 根据传入的16进制RGB\alpha值转换为对应的UIColor实例
 */
+ (UIColor *)colorWithRGB:(uint32_t)rgbValue alpha:(CGFloat)alpha {
    return [UIColor colorWithRed:((rgbValue & 0xFF0000) >> 16) / 255.0f
                           green:((rgbValue & 0xFF00) >> 8) / 255.0f
                            blue:(rgbValue & 0xFF) / 255.0f
                           alpha:alpha];
}
@end
