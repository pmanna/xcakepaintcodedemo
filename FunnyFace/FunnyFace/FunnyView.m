//
//  FunnyView.m
//  FunnyFace
//
//  Created by Paolo on 08/09/2015.
//  Copyright (c) 2015 Paolo. All rights reserved.
//

#import "FunnyView.h"
#import "FunnyStyle.h"

@implementation FunnyView

- (void)setHappiness:(CGFloat)happiness
{
    // Ensure view is redrawn whenever we set the happiness
    _happiness  = happiness;
    
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect {
    [FunnyStyle drawFaceWithHappiness: self.happiness];
}

@end
