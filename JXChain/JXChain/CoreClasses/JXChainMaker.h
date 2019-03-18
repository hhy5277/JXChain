// Created by JX-You
// Email:17762541214@163.com
// Wechat:17762541214
// Github:https://github.com/JX-You

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

#pragma mark ---------------------------JXChainMaker---------------------------------

@interface JXChainMaker : NSObject

@property (nonatomic, weak) UIView *innerView;

#pragma mark - UILabel

/**
 文本内容
 */
- (JXChainMaker *(^)(NSString *)) text;

/**
 字体
 */
- (JXChainMaker *(^)(float)) font;

/**
 文字颜色
 */
- (JXChainMaker *(^)(UIColor *)) textColor;

/**
 文字RGB颜色
 */
- (JXChainMaker *(^)(uint32_t)) textColorColorWithRgbValue;

/**
 文字对齐方式
 */
- (JXChainMaker *(^)(NSTextAlignment )) textAlignment;

/**
 设置省略文字样式
 */
- (JXChainMaker *(^)(NSLineBreakMode )) lineBreakMode;

/**
 设置富文本(带属性的字符串)
 */
- (JXChainMaker *(^)(NSAttributedString *)) attributedText;

/**
 视图可交互性
 */
- (JXChainMaker *(^)(BOOL)) userInteractionEnabled;

/**
 设置状态
 */
- (JXChainMaker *(^)(BOOL)) enabled;

/**
 文字多行显示
 */
- (JXChainMaker *(^)(NSInteger)) numberOfLines;

/**
 文字自适应视图宽度
 */
- (JXChainMaker *(^)(BOOL)) adjustsFontSizeToFitWidth;

/**
 文本的基线位置
 */
- (JXChainMaker *(^)(UIBaselineAdjustment)) baselineAdjustment;

#pragma mark - UIButton

/**
 按钮文字
 */
- (JXChainMaker *(^)(NSString *, UIControlState)) title;

/**
 按钮文字颜色
 */
- (JXChainMaker *(^)(UIColor *, UIControlState)) titleColor;

/**
 按钮文字颜色(RGB)
 */
- (JXChainMaker *(^)(uint32_t, UIControlState)) titleColorWithRgbValue;

/**
 按钮的图片
 */
- (JXChainMaker *(^)(UIImage *, UIControlState)) button_image;

/**
 按钮的背景图片
 */
- (JXChainMaker *(^)(UIImage *, UIControlState)) backgroundImage;

/**
 按钮的富文本文字
 */
- (JXChainMaker *(^)(NSAttributedString *, UIControlState)) attributedTitle;

/**
 按钮的内容偏移(包含UILabel和UIImageView)
 */
- (JXChainMaker *(^)(UIEdgeInsets)) contentEdgeInsets;

/**
 按钮文字偏移
 */
- (JXChainMaker *(^)(UIEdgeInsets)) titleEdgeInsets;

/**
 按钮图片偏移
 */
- (JXChainMaker *(^)(UIEdgeInsets)) imageEdgeInsets;

#pragma mark - UITextField

/**
 样式设置
 */
- (JXChainMaker *(^)(UITextBorderStyle)) borderStyle;

/**
 占位文字
 */
- (JXChainMaker *(^)(NSString *)) placeholder;

/**
 占位文字副文本
 */
- (JXChainMaker *(^)(NSAttributedString *)) attributedPlaceholder;

/**
 开始编辑清空文本
 */
- (JXChainMaker *(^)(BOOL)) clearsOnBeginEditing;

/**
 代理
 */
- (JXChainMaker *(^)(id<UITextFieldDelegate>)) textFieldDelegate;

/**
 背景
 */
- (JXChainMaker *(^)(UIImage*)) background;

/**
 enabled为NO时的背景
 */
- (JXChainMaker *(^)(UIImage *)) disabledBackground;

/**
 文本删除按钮模式
 */
- (JXChainMaker *(^)(UITextFieldViewMode)) clearButtonMode;

/**
 设置左边视图
 */
- (JXChainMaker *(^)(UIView *)) leftView;

/**
 设置左边视图模式
 */
- (JXChainMaker *(^)(UITextFieldViewMode)) leftViewMode;

/**
 设置右边视图
 */
- (JXChainMaker *(^)(UIView *)) rightView;

/**
 设置右边视图模式
 */
- (JXChainMaker *(^)(UITextFieldViewMode)) rightViewMode;

#pragma mark - UITextView

/**
 代理
 */
- (JXChainMaker *(^)(id<UITextViewDelegate>)) textViewdDelegate;

/**
 所选文字的位置
 */
- (JXChainMaker *(^)(NSRange)) selectedRange;

/**
 设置是否准许编辑
 */
- (JXChainMaker *(^)(BOOL)) editable;

/**
 设置是否可以选择
 */
- (JXChainMaker *(^)(BOOL)) selectable;

/**
 显示数据类型的连接模式
 */
- (JXChainMaker *(^)(UIDataDetectorTypes)) dataDetectorTypes;

#pragma mark - UIImageView

/**
 图片
 */
- (JXChainMaker *(^)(UIImage *)) imageView_image;

/**
 高亮图片
 */
- (JXChainMaker *(^)(UIImage *)) highlightedImage;

/**
 设置高亮状态
 */
- (JXChainMaker *(^)(BOOL )) highlighted;

/**
 动画图片数组
 */
- (JXChainMaker *(^)(NSArray<UIImage *> *)) animationImages;

/**
 高亮动画图片数组
 */
- (JXChainMaker *(^)(NSArray<UIImage *> *)) highlightedAnimationImages;

/**
 动画持续时间
 */
- (JXChainMaker *(^)(NSTimeInterval)) animationDuration;

/**
 动画重复次数
 */
- (JXChainMaker *(^)(NSInteger )) animationRepeatCount;

#pragma mark - UITableView

/**
 数据源
 */
- (JXChainMaker *(^)(id <UITableViewDataSource> )) tableViewDataSource;

/**
 代理
 */
- (JXChainMaker *(^)(id <UITableViewDelegate>   )) tableViewDelegate;

/**
 行高
 */
- (JXChainMaker *(^)(CGFloat)) rowHeight;

/**
 组头部视图高度
 */
- (JXChainMaker *(^)(CGFloat)) sectionHeaderHeight;

/**
 组尾部视图高度
 */
- (JXChainMaker *(^)(CGFloat)) sectionFooterHeight;

/**
 估算行高
 */
- (JXChainMaker *(^)(CGFloat)) estimatedRowHeight;

/**
 估算组头部视图高度
 */
- (JXChainMaker *(^)(CGFloat)) estimatedSectionHeaderHeight;

/**
 估算组尾部视图高度
 */
- (JXChainMaker *(^)(CGFloat)) estimatedSectionFooterHeight;

/**
 分隔线位置
 */
- (JXChainMaker *(^)(UIEdgeInsets)) separatorInset;

/**
 头部视图
 */
- (JXChainMaker *(^)(UIView *)) tableHeaderView;

/**
 尾部视图
 */
- (JXChainMaker *(^)(UIView *)) tableFooterView;

@end

#pragma mark ---------------------------JXChainMaker (CommonProperty)---------------------------------

@interface JXChainMaker (CommonProperty)

/**
 视图的标签
 */
- (JXChainMaker *(^)(NSInteger))tag;

/**
 视图的frame
 */
- (JXChainMaker *(^)(CGRect)) frame;

/**
 视图的bounds
 */
- (JXChainMaker *(^)(CGRect)) bounds;

/**
 视图的中心
 */
- (JXChainMaker *(^)(CGPoint)) center;

/**
 处理视图形变,视图的平移、缩放、旋转等
 */
- (JXChainMaker *(^)(CGAffineTransform)) transform;

/**
 内容视图伸张的模式
 */
- (JXChainMaker *(^)(CGFloat)) contentScaleFactor;

/**
 设置多点触摸
 */
- (JXChainMaker *(^)(BOOL)) multipleTouchEnabled;

/**
 描述线条轮廓颜色,具有传递性
 */
- (JXChainMaker *(^)(UIColor *)) tintColor;

/**
 描述线条轮廓颜色(RGB),具有传递性
 */
- (JXChainMaker *(^)(uint32_t)) tintColorWithRgbValue;

/**
 背景颜色
 */
- (JXChainMaker *(^)(UIColor *)) backgroundColor;

/**
 背景颜色(RGB)
 */
- (JXChainMaker *(^)(uint32_t)) backgroundColorWithRgbValue;

/**
 背景颜色(RGBA)
 */
- (JXChainMaker *(^)(uint32_t, CGFloat)) backgroundColorWithRgbaValue;

/**
 子视图的显示范围(要在父视图上设置),设为YES,超出父控件的被裁减;设为NO,超出父控件的不被裁减
 */
- (JXChainMaker *(^)(BOOL)) clipsToBounds;

/**
 添加视图到父视图
 */
- (JXChainMaker *(^)(UIView *)) addToSuperView;

@end

#pragma mark ---------------------------JXChainMaker (JXCALayer)---------------------------------


@interface JXChainMaker (JXCALayer)

/**
 圆角半径
 */
- (JXChainMaker *(^)(CGFloat)) cornerRadius;

/**
 边界线宽度
 */
- (JXChainMaker *(^)(CGFloat)) borderWidth;

/**
 边界线颜色
 */
- (JXChainMaker *(^)(CGColorRef)) borderColor;

@end


#pragma mark ---------------------------UIColor (RGBValue)---------------------------------

@interface UIColor (RGBValue)

+ (UIColor *)colorWithRGB:(uint32_t)rgbValue;

+ (UIColor *)colorWithRGB:(uint32_t)rgbValue alpha:(CGFloat)alpha;

@end

NS_ASSUME_NONNULL_END
