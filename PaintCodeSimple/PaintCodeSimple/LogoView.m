//
//  LogoView.m
//  PaintCodeSimple
//
//  Created by Paolo on 09/09/2015.
//  Copyright (c) 2015 Paolo. All rights reserved.
//

#import "LogoView.h"
#import "MyStyle.h"

@implementation LogoView

- (void)drawRect:(CGRect)rect {
    [MyStyle drawLogoCanvasWithLogoWidth: self.bounds.size.width];
}

@end
