//
//  LeftMenuViewController.h
//  test123
//
//  Created by kf1 on 14-9-16.
//  Copyright (c) 2014年 kf1. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum {
    LeftMenuPanDirectionLeft = 0,/**< 左方向*/
    LeftMenuPanDirectionRight,/**< 右方向*/
} LeftMenuPanDirection;

@interface FLSideSlipViewController : UIViewController<UIGestureRecognizerDelegate>
{
    CGFloat g_currentTranslateX;/**< 当前x轴距离*/
    
    LeftMenuPanDirection g_panDirection;/**<滑动方向 */
    
    UIView *g_overView;
    
    struct {
        unsigned int showingLeftView:1;
        unsigned int showingRightView:1;
        unsigned int canShowRight:1;
        unsigned int canShowLeft:1;
    } g_menuFlags;
    
    UITapGestureRecognizer *g_tap;
}

@property(nonatomic,retain)UIViewController *rootViewController;
@property(nonatomic,retain)UIViewController *leftViewController;
@property(nonatomic,retain)UIViewController *rightViewController;

-(id)initWithRootViewController:(UIViewController *)viewController;

-(void)setNewRootViewController:(UIViewController *)viewController animation:(BOOL)animation;
@end
