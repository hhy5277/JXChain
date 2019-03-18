// Created by JX-You
// Email:17762541214@163.com
// Wechat:17762541214
// Github:https://github.com/JX-You

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

#pragma mark -------------------------------------JXChain-------------------------------------------

@interface JXChain : NSObject

@property (nonatomic, weak) UIView *innerView;

- (JXChain *(^)(NSString *)) text;     // default is nil

- (JXChain *(^)(float           )) font;  // default is nil (system font 17 plain)

- (JXChain *(^)(UIColor        *)) textColor;   // default is nil (text draws black)

- (JXChain *(^)(uint32_t        )) textColorColorWithRgbValue;   // default is nil (text draws black)

- (JXChain *(^)(NSTextAlignment )) textAlignment;   // default is NSTextAlignmentNatural (before iOS 9, the default was NSTextAlignmentLeft)

- (JXChain *(^)(NSLineBreakMode )) lineBreakMode;  // default is NSLineBreakByTruncatingTail. used for single and multiple lines of text

// the underlying attributed string drawn by the label, if set, the label ignores the properties above.
- (JXChain *(^)(NSAttributedString *)) attributedText NS_AVAILABLE_IOS(6_0);  // default is nil

- (JXChain *(^)(BOOL                 )) userInteractionEnabled;  // default is NO

- (JXChain *(^)(BOOL                 )) enabled;  // default is YES. changes how the label is drawn

// this determines the number of lines to draw and what to do when sizeToFit is called. default value is 1 (single line). A value of 0 means no limit
// if the height of the text reaches the # of lines or the height of the view is less than the # of lines allowed, the text will be
// truncated using the line break mode.
- (JXChain *(^)(NSInteger              )) numberOfLines;  // default is YES. changes how the label is drawn


// these next 3 properties allow the label to be autosized to fit a certain width by scaling the font size(s) by a scaling factor >= the minimum scaling factor
// and to specify how the text baseline moves when it needs to shrink the font.
- (JXChain *(^)(BOOL                   )) adjustsFontSizeToFitWidth;        // default is NO

- (JXChain *(^)(UIBaselineAdjustment   )) baselineAdjustment;         // default is UIBaselineAdjustmentAlignBaselines

//MARK: --- UIButtion

- (JXChain *(^)(NSString *,UIControlState)) title;  // default is nil. title is assumed to be single line

- (JXChain *(^)(UIColor *,UIControlState)) titleColor UI_APPEARANCE_SELECTOR;   // default if nil. use opaque white

- (JXChain *(^)(uint32_t, UIControlState)) titleColorWithRgbValue UI_APPEARANCE_SELECTOR;   // default if nil. use opaque white

- (JXChain *(^)(UIImage *,UIControlState)) image; // default is nil. should be same size if different for different states

- (JXChain *(^)(UIImage *,UIControlState)) backgroundImage UI_APPEARANCE_SELECTOR; // default is nil

- (JXChain *(^)(NSAttributedString *,UIControlState)) attributedTitle NS_AVAILABLE_IOS(6_0); // default is nil. title is assumed to be single line

- (JXChain *(^)(UIEdgeInsets             )) contentEdgeInsets UI_APPEARANCE_SELECTOR; // default is UIEdgeInsetsZero. On tvOS 10 or later, default is nonzero except for custom buttons.

- (JXChain *(^)(UIEdgeInsets             )) titleEdgeInsets;     // default is UIEdgeInsetsZero

- (JXChain *(^)(UIEdgeInsets             )) imageEdgeInsets;     // default is UIEdgeInsetsZero

//MARK: --- UITextField

- (JXChain *(^)(UITextBorderStyle         )) borderStyle;  // default is UITextBorderStyleNone. If set to UITextBorderStyleRoundedRect, custom background images are ignored.

- (JXChain *(^)(NSString                 *)) placeholder;  // default is nil. string is drawn 70% gray

- (JXChain *(^)(NSAttributedString       *)) attributedPlaceholder NS_AVAILABLE_IOS(6_0); // default is nil

- (JXChain *(^)(BOOL                      )) clearsOnBeginEditing;   // default is NO which moves cursor to location clicked. if YES, all text

- (JXChain *(^)(id<UITextFieldDelegate>   )) textFliedDelegate;   // default is nil. weak reference

- (JXChain *(^)(UIImage                  *)) background;   // default is nil. draw in border rect. image should be stretchable

- (JXChain *(^)(UIImage                  *)) disabledBackground;   // default is nil. ignored if background not set. image should be stretchable

- (JXChain *(^)(UITextFieldViewMode       )) clearButtonMode;   // sets when the clear button shows up. default is UITextFieldViewModeNever

- (JXChain *(^)(UIView                   *)) leftView;   // e.g. magnifying glass

- (JXChain *(^)(UITextFieldViewMode       )) leftViewMode;   // sets when the left view shows up. default is UITextFieldViewModeNever

- (JXChain *(^)(UIView                   *)) rightView;   // e.g. bookmarks button

- (JXChain *(^)(UITextFieldViewMode       )) rightViewMode;   // sets when the right view shows up. default is UITextFieldViewModeNever

//MARK: --- UITextView
- (JXChain *(^)(id<UITextViewDelegate>   )) textViewdDelegate;   // default is nil. weak reference

- (JXChain *(^)(NSRange                  )) selectedRange;

- (JXChain *(^)(BOOL                     )) editable __TVOS_PROHIBITED;

- (JXChain *(^)(BOOL                     )) selectable NS_AVAILABLE_IOS(7_0);  // toggle selectability, which controls the ability of the user to select content and interact with URLs & attachments. On tvOS this also makes the text view focusable.

- (JXChain *(^)(UIDataDetectorTypes      )) dataDetectorTypes NS_AVAILABLE_IOS(3_0) __TVOS_PROHIBITED;

//已废弃
- (JXChain *(^)(UIImage                  *)) img;   // default is nil

- (JXChain *(^)(UIImage                  *)) imhighlightedImageg;   // default is nil

- (JXChain *(^)(BOOL                       )) highlighted;     // default is NO

- (JXChain *(^)(NSArray<UIImage *>        *)) animationImages;      // The array must contain UIImages. Setting hides the single image. default is nil

- (JXChain *(^)(NSArray<UIImage *>        *)) highlightedAnimationImages NS_AVAILABLE_IOS(3_0); // The array must contain UIImages. Setting hides the single image. default is nil

- (JXChain *(^)(NSTimeInterval             )) animationDuration;     // for one cycle of images. default is number of images * 1/30th of a second (i.e. 30 fps)

- (JXChain *(^)(NSInteger                  )) animationRepeatCount;    // 0 means infinite (default is 0)

//MARK: -- UITableView

- (JXChain *(^)(id <UITableViewDataSource> )) tableViewDataSource;

- (JXChain *(^)(id <UITableViewDelegate>   )) tableViewDelegate;

- (JXChain *(^)(CGFloat                    )) rowHeight;   // default is UITableViewAutomaticDimension

- (JXChain *(^)(CGFloat                    )) sectionHeaderHeight;  // default is UITableViewAutomaticDimension

- (JXChain *(^)(CGFloat                    )) sectionFooterHeight;  // default is UITableViewAutomaticDimension

- (JXChain *(^)(CGFloat                    )) estimatedRowHeight NS_AVAILABLE_IOS(7_0);    // default is UITableViewAutomaticDimension, set to 0 to disable

- (JXChain *(^)(CGFloat                    )) estimatedSectionHeaderHeight NS_AVAILABLE_IOS(7_0);  // default is UITableViewAutomaticDimension, set to 0 to disable

- (JXChain *(^)(CGFloat                    )) estimatedSectionFooterHeight NS_AVAILABLE_IOS(7_0);  // default is UITableViewAutomaticDimension, set to 0 to disable

- (JXChain *(^)(UIEdgeInsets               )) separatorInset NS_AVAILABLE_IOS(7_0) UI_APPEARANCE_SELECTOR; // allows customization of the frame of cell separators; see also the separatorInsetReference property. Use UITableViewAutomaticDimension for the automatic inset for that edge.

- (JXChain *(^)(UIView                     *)) tableHeaderView;    // accessory view for above row content. default is nil. not to be confused with section header

- (JXChain *(^)(UIView                     *)) tableFooterView;    // accessory view below content. default is nil. not to be confused with section footer

@end

#pragma mark -------------------------------------JXChain (PublicProperty)-------------------------------------------

@interface JXChain (PublicProperty)

// animatable. do not use frame if view is transformed since it will not correctly reflect the actual location of the view. use bounds + center instead.
- (JXChain *(^)(CGRect                  )) frame;

// use bounds/center and not frame if non-identity transform. if bounds dimension is odd, center may be have fractional part

- (JXChain *(^)(CGRect                  )) bounds; // default bounds is zero origin, frame size. animatable

- (JXChain *(^)(CGPoint                 )) center; // center is center of frame. animatable

- (JXChain *(^)(CGAffineTransform       )) transform; // default is CGAffineTransformIdentity. animatable

- (JXChain *(^)(CGFloat                 )) contentScaleFactor NS_AVAILABLE_IOS(4_0);

- (JXChain *(^)(BOOL                    )) multipleTouchEnabled __TVOS_PROHIBITED;   // default is NO

- (JXChain *(^)(UIColor                 *)) tintColor NS_AVAILABLE_IOS(5_0);  // The tintColor is inherited through the superview hierarchy. See UIView for more information.

- (JXChain *(^)(uint32_t                 )) tintColorWithRgbValue NS_AVAILABLE_IOS(5_0);  // The tintColor is inherited through the superview hierarchy. See UIView for more information.

- (JXChain *(^)(UIColor                 *)) backgroundColor UI_APPEARANCE_SELECTOR;    // default is nil. Can be useful with the appearance proxy on custom UIView subclasses.

- (JXChain *(^)(uint32_t                 )) backgroundColorWithRgbValue UI_APPEARANCE_SELECTOR;    // default is nil. Can be useful with the appearance proxy on custom UIView subclasses.

- (JXChain *(^)(uint32_t,         CGFloat)) backgroundColorWithRgbaValue UI_APPEARANCE_SELECTOR;    // default is nil. Can be useful with the appearance proxy on custom UIView subclasses.

- (JXChain *(^)(BOOL                      )) clipsToBounds; // When YES, content and subviews are clipped to the bounds of the view. Default is NO.


- (JXChain *(^)(UIView                  *)) addToSuperView;


@end

#pragma mark -------------------------------------JXChain (JXCALayer)-------------------------------------------


@interface JXChain (JXCALayer)

/* Defines which of the four corners receives the masking when using
 * `cornerRadius' property. Defaults to all four corners. */
- (JXChain *(^)(                   CGFloat)) cornerRadius;

/* The width of the layer's border, inset from the layer bounds. The
 * border is composited above the layer's content and sublayers and
 * includes the effects of the `cornerRadius' property. Defaults to
 * zero. Animatable. */
- (JXChain *(^)(                   CGFloat)) borderWidth;

/* The color of the layer's border. Defaults to opaque black. Colors
 * created from tiled patterns are supported. Animatable. */
- (JXChain *(^)(                CGColorRef)) borderColor;

@end


#pragma mark -------------------------------------UIColor (RGBValue)-------------------------------------------

@interface UIColor (RGBValue)

+ (UIColor *)colorWithRGB:(uint32_t)rgbValue;
+ (UIColor *)colorWithRGB:(uint32_t)rgbValue alpha:(CGFloat)alpha;

@end

NS_ASSUME_NONNULL_END
