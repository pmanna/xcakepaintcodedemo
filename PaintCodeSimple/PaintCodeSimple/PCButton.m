//
//  PCButton.m
//
//  Created by Paolo on 01/05/2015.
//  Copyright (c) 2015 Paolo. All rights reserved.
//

#import "PCButton.h"

@interface PCButton ()


@end

@implementation PCButton

- (instancetype)initWithFrame:(CGRect)frame {
	
	if(self = [super initWithFrame:frame]) {
		_buttonColor	= [UIColor blackColor];
		_highlightColor	= [UIColor whiteColor];
		_strokeColor	= [UIColor whiteColor];
	}
	
	return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
	
	if(self = [super initWithCoder: aDecoder]) {
		_buttonColor	= [UIColor blackColor];
		_highlightColor	= [UIColor whiteColor];
		_strokeColor	= [UIColor whiteColor];
	}
	
	return self;
}


- (void)drawRect:(CGRect)rect
{
	if (self.isPressed)
		[self.highlightColor setFill];
	else
		[self.buttonColor setFill];
	
	[self.strokeColor setStroke];
	
	// Subclasses draw button here
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
	_isPressed	= YES;
	
	[self setNeedsDisplay];
}

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event
{
	_isPressed	= NO;
	
	[self setNeedsDisplay];
}

- (void)touchesEnded: (NSSet *)touches withEvent:(UIEvent *)event
{
	CGPoint	pt		= [[touches anyObject] locationInView: self];
	
	_isPressed	= NO;
	
	if (CGRectContainsPoint(self.bounds, pt) && self.buttonAction)
		self.buttonAction(self);
	
	[self setNeedsDisplay];
}

@end
