//
//  MyView.m
//  PaintCodeSimple
//
//  Created by Paolo on 08/09/2015.
//  Copyright (c) 2015 Paolo. All rights reserved.
//

#import "BubbleView.h"
#import "MyStyle.h"

@implementation BubbleView

- (void)drawRect:(CGRect)rect {
    [MyStyle drawBubbleAreaWithBubbleWidth: self.bounds.size.width bubbleHeight: self.bounds.size.height];
}

@end
