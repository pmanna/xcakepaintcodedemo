//
//  PCButton.h
//
//  Created by Paolo on 01/05/2015.
//  Copyright (c) 2015 Paolo. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE

@interface PCButton : UIView

@property (strong, nonatomic) IBInspectable UIColor	*buttonColor;
@property (strong, nonatomic) IBInspectable UIColor	*highlightColor;
@property (strong, nonatomic) IBInspectable UIColor	*strokeColor;
@property (readonly, nonatomic) BOOL				isPressed;

@property (strong, nonatomic) void (^buttonAction)(PCButton *btn);


@end
