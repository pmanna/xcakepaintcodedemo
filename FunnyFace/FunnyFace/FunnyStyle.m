//
//  FunnyStyle.m
//  FunnyFace
//
//  Created by Paolo (via PixelCut) on 08/09/2015.
//  Copyright (c) 2015 . All rights reserved.
//
//  Generated by PaintCode (www.paintcodeapp.com)
//

#import "FunnyStyle.h"


@implementation FunnyStyle

#pragma mark Initialization

+ (void)initialize
{
}

#pragma mark Drawing Methods

+ (void)drawFaceWithHappiness: (CGFloat)happiness
{
    //// General Declarations
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    CGContextRef context = UIGraphicsGetCurrentContext();

    //// Color Declarations
    UIColor* happyColor = [UIColor colorWithRed: 1 green: 0.744 blue: 0 alpha: 1];
    UIColor* deepDark = [UIColor colorWithRed: 0.261 green: 0.166 blue: 0.009 alpha: 1];
    UIColor* brownie = [UIColor colorWithRed: 0.733 green: 0.439 blue: 0.094 alpha: 1];
    UIColor* dirtyTeeth = [UIColor colorWithRed: 0.725 green: 0.725 blue: 0.725 alpha: 1];
    UIColor* glow = [UIColor colorWithRed: 1 green: 0.935 blue: 0.66 alpha: 1];
    UIColor* shadow3Color = [UIColor colorWithRed: 0 green: 0 blue: 0 alpha: 1];
    UIColor* cleanTeeth = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
    UIColor* shadow2Color = [UIColor colorWithRed: 0.813 green: 0.364 blue: 0.095 alpha: 1];

    //// Gradient Declarations
    CGFloat eyeGradientLocations[] = {0, 1};
    CGGradientRef eyeGradient = CGGradientCreateWithColors(colorSpace, (__bridge CFArrayRef)@[(id)brownie.CGColor, (id)deepDark.CGColor], eyeGradientLocations);
    CGFloat teethGradientLocations[] = {0, 0.83};
    CGGradientRef teethGradient = CGGradientCreateWithColors(colorSpace, (__bridge CFArrayRef)@[(id)dirtyTeeth.CGColor, (id)cleanTeeth.CGColor], teethGradientLocations);
    CGFloat faceGradientLocations[] = {0, 1};
    CGGradientRef faceGradient = CGGradientCreateWithColors(colorSpace, (__bridge CFArrayRef)@[(id)glow.CGColor, (id)happyColor.CGColor], faceGradientLocations);

    //// Shadow Declarations
    NSShadow* mainShadow = [[NSShadow alloc] init];
    [mainShadow setShadowColor: [shadow3Color colorWithAlphaComponent: CGColorGetAlpha(shadow3Color.CGColor) * 0.41]];
    [mainShadow setShadowOffset: CGSizeMake(0.1, 1.1)];
    [mainShadow setShadowBlurRadius: 3];
    NSShadow* shadowMain = [[NSShadow alloc] init];
    [shadowMain setShadowColor: shadow2Color];
    [shadowMain setShadowOffset: CGSizeMake(0.1, -0.1)];
    [shadowMain setShadowBlurRadius: 6];
    NSShadow* justShadow = [[NSShadow alloc] init];
    [justShadow setShadowColor: UIColor.blackColor];
    [justShadow setShadowOffset: CGSizeMake(0.1, -0.1)];
    [justShadow setShadowBlurRadius: 2];

    //// Variable Declarations
    CGFloat faceSideMouthY = 58 - happiness * 9;
    CGFloat faceMouthCenterY = happiness * 10 + 42;
    CGFloat faceMouthLeftX = 19 - happiness * 4;
    CGFloat faceMouthRightX = 43 + happiness * 4;
    CGFloat faceHappinessOpacity = 0.5 - happiness * 0.5;
    CGFloat faceMouthBottomL = 19 - happiness * 3;
    CGFloat faceMouthBottomR = 43 + happiness * 3;
    CGFloat faceEyeH = 14 + 2 * happiness;
    CGFloat faceEyeW = 9 - 3 * happiness;
    CGRect faceEyeRectL = CGRectMake(23 - faceEyeW / 2.0, 31 - faceEyeH, faceEyeW, faceEyeH);
    CGRect faceEyeRectR = CGRectMake(39 - faceEyeW / 2.0, 31 - faceEyeH, faceEyeW, faceEyeH);

    //// MouthBackground Drawing
    UIBezierPath* mouthBackgroundPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(5, 5, 52, 52)];
    CGContextSaveGState(context);
    CGContextSetShadowWithColor(context, justShadow.shadowOffset, justShadow.shadowBlurRadius, [justShadow.shadowColor CGColor]);
    CGContextBeginTransparencyLayer(context, NULL);
    [mouthBackgroundPath addClip];
    CGContextDrawRadialGradient(context, eyeGradient,
        CGPointMake(29.98, 45.72), 5.01,
        CGPointMake(29.58, 46.01), 14.94,
        kCGGradientDrawsBeforeStartLocation | kCGGradientDrawsAfterEndLocation);
    CGContextEndTransparencyLayer(context);

    ////// MouthBackground Inner Shadow
    CGContextSaveGState(context);
    UIRectClip(mouthBackgroundPath.bounds);
    CGContextSetShadowWithColor(context, CGSizeZero, 0, NULL);

    CGContextSetAlpha(context, CGColorGetAlpha([shadowMain.shadowColor CGColor]));
    CGContextBeginTransparencyLayer(context, NULL);
    {
        UIColor* opaqueShadow = [shadowMain.shadowColor colorWithAlphaComponent: 1];
        CGContextSetShadowWithColor(context, shadowMain.shadowOffset, shadowMain.shadowBlurRadius, [opaqueShadow CGColor]);
        CGContextSetBlendMode(context, kCGBlendModeSourceOut);
        CGContextBeginTransparencyLayer(context, NULL);

        [opaqueShadow setFill];
        [mouthBackgroundPath fill];

        CGContextEndTransparencyLayer(context);
    }
    CGContextEndTransparencyLayer(context);
    CGContextRestoreGState(context);

    CGContextRestoreGState(context);



    //// Teeth Drawing
    UIBezierPath* teethPath = [UIBezierPath bezierPath];
    [teethPath moveToPoint: CGPointMake(17, 39.5)];
    [teethPath addCurveToPoint: CGPointMake(15, 34) controlPoint1: CGPointMake(16, 37.5) controlPoint2: CGPointMake(15, 34)];
    [teethPath addCurveToPoint: CGPointMake(31, 37.5) controlPoint1: CGPointMake(15, 34) controlPoint2: CGPointMake(22, 37.5)];
    [teethPath addCurveToPoint: CGPointMake(47, 34) controlPoint1: CGPointMake(40, 37.5) controlPoint2: CGPointMake(47, 34)];
    [teethPath addCurveToPoint: CGPointMake(45, 39.5) controlPoint1: CGPointMake(47, 34) controlPoint2: CGPointMake(46, 37.5)];
    [teethPath addCurveToPoint: CGPointMake(31, 43) controlPoint1: CGPointMake(42.74, 41.86) controlPoint2: CGPointMake(39.3, 43)];
    [teethPath addCurveToPoint: CGPointMake(17, 39.5) controlPoint1: CGPointMake(23.3, 43) controlPoint2: CGPointMake(19.42, 41.79)];
    [teethPath closePath];
    teethPath.lineJoinStyle = kCGLineJoinRound;

    CGContextSaveGState(context);
    [teethPath addClip];
    CGContextDrawRadialGradient(context, teethGradient,
        CGPointMake(31, 43), 16.73,
        CGPointMake(31, 43), 0.44,
        kCGGradientDrawsBeforeStartLocation | kCGGradientDrawsAfterEndLocation);
    CGContextRestoreGState(context);
    [deepDark setStroke];
    teethPath.lineWidth = 2;
    [teethPath stroke];


    //// FaceSkin Drawing
    UIBezierPath* faceSkinPath = [UIBezierPath bezierPath];
    [faceSkinPath moveToPoint: CGPointMake(faceMouthRightX, (faceSideMouthY - 15))];
    [faceSkinPath addCurveToPoint: CGPointMake(31, 38) controlPoint1: CGPointMake(faceMouthRightX, (faceSideMouthY - 15)) controlPoint2: CGPointMake((faceMouthBottomR - 3), 38)];
    [faceSkinPath addCurveToPoint: CGPointMake(faceMouthLeftX, (faceSideMouthY - 15)) controlPoint1: CGPointMake((faceMouthBottomL + 3), 38) controlPoint2: CGPointMake(faceMouthLeftX, (faceSideMouthY - 15))];
    [faceSkinPath addCurveToPoint: CGPointMake(31, (faceMouthCenterY - 4)) controlPoint1: CGPointMake(faceMouthLeftX, (faceSideMouthY - 15)) controlPoint2: CGPointMake((faceMouthBottomL + 3), (faceMouthCenterY - 4))];
    [faceSkinPath addCurveToPoint: CGPointMake(faceMouthRightX, (faceSideMouthY - 15)) controlPoint1: CGPointMake((faceMouthBottomR - 3), (faceMouthCenterY - 4)) controlPoint2: CGPointMake(faceMouthRightX, (faceSideMouthY - 15))];
    [faceSkinPath closePath];
    [faceSkinPath moveToPoint: CGPointMake(57, 31)];
    [faceSkinPath addCurveToPoint: CGPointMake(31, 57) controlPoint1: CGPointMake(57, 45.36) controlPoint2: CGPointMake(45.36, 57)];
    [faceSkinPath addCurveToPoint: CGPointMake(5, 31) controlPoint1: CGPointMake(16.64, 57) controlPoint2: CGPointMake(5, 45.36)];
    [faceSkinPath addCurveToPoint: CGPointMake(15.51, 10.12) controlPoint1: CGPointMake(5, 22.45) controlPoint2: CGPointMake(9.13, 14.86)];
    [faceSkinPath addCurveToPoint: CGPointMake(31, 5) controlPoint1: CGPointMake(19.83, 6.9) controlPoint2: CGPointMake(25.19, 5)];
    [faceSkinPath addCurveToPoint: CGPointMake(57, 31) controlPoint1: CGPointMake(45.36, 5) controlPoint2: CGPointMake(57, 16.64)];
    [faceSkinPath closePath];
    CGContextSaveGState(context);
    [faceSkinPath addClip];
    CGContextDrawRadialGradient(context, faceGradient,
        CGPointMake(30.1, 8.55), 7.59,
        CGPointMake(29.88, 8.51), 28.3,
        kCGGradientDrawsBeforeStartLocation | kCGGradientDrawsAfterEndLocation);
    CGContextRestoreGState(context);

    ////// FaceSkin Inner Shadow
    CGContextSaveGState(context);
    UIRectClip(faceSkinPath.bounds);
    CGContextSetShadowWithColor(context, CGSizeZero, 0, NULL);

    CGContextSetAlpha(context, CGColorGetAlpha([shadowMain.shadowColor CGColor]));
    CGContextBeginTransparencyLayer(context, NULL);
    {
        UIColor* opaqueShadow = [shadowMain.shadowColor colorWithAlphaComponent: 1];
        CGContextSetShadowWithColor(context, shadowMain.shadowOffset, shadowMain.shadowBlurRadius, [opaqueShadow CGColor]);
        CGContextSetBlendMode(context, kCGBlendModeSourceOut);
        CGContextBeginTransparencyLayer(context, NULL);

        [opaqueShadow setFill];
        [faceSkinPath fill];

        CGContextEndTransparencyLayer(context);
    }
    CGContextEndTransparencyLayer(context);
    CGContextRestoreGState(context);



    //// Group
    {
        CGContextSaveGState(context);
        CGContextSetAlpha(context, faceHappinessOpacity);
        CGContextSetBlendMode(context, kCGBlendModeMultiply);
        CGContextBeginTransparencyLayer(context, NULL);


        //// SadRedMask Drawing
        CGContextSaveGState(context);

        UIBezierPath* sadRedMaskPath = [UIBezierPath bezierPath];
        [sadRedMaskPath moveToPoint: CGPointMake(faceMouthRightX, (faceSideMouthY - 15))];
        [sadRedMaskPath addCurveToPoint: CGPointMake(31, 38) controlPoint1: CGPointMake(faceMouthRightX, (faceSideMouthY - 15)) controlPoint2: CGPointMake((faceMouthBottomR - 4), 38)];
        [sadRedMaskPath addCurveToPoint: CGPointMake(faceMouthLeftX, (faceSideMouthY - 15)) controlPoint1: CGPointMake((faceMouthBottomL + 4), 38) controlPoint2: CGPointMake(faceMouthLeftX, (faceSideMouthY - 15))];
        [sadRedMaskPath addCurveToPoint: CGPointMake(31, (faceMouthCenterY - 4)) controlPoint1: CGPointMake(faceMouthLeftX, (faceSideMouthY - 15)) controlPoint2: CGPointMake(faceMouthBottomL, (faceMouthCenterY - 4))];
        [sadRedMaskPath addCurveToPoint: CGPointMake(faceMouthRightX, (faceSideMouthY - 15)) controlPoint1: CGPointMake(faceMouthBottomR, (faceMouthCenterY - 4)) controlPoint2: CGPointMake(faceMouthRightX, (faceSideMouthY - 15))];
        [sadRedMaskPath closePath];
        [sadRedMaskPath moveToPoint: CGPointMake(57, 31)];
        [sadRedMaskPath addCurveToPoint: CGPointMake(31, 57) controlPoint1: CGPointMake(57, 45.36) controlPoint2: CGPointMake(45.36, 57)];
        [sadRedMaskPath addCurveToPoint: CGPointMake(5, 31) controlPoint1: CGPointMake(16.64, 57) controlPoint2: CGPointMake(5, 45.36)];
        [sadRedMaskPath addCurveToPoint: CGPointMake(15.51, 10.12) controlPoint1: CGPointMake(5, 22.45) controlPoint2: CGPointMake(9.13, 14.86)];
        [sadRedMaskPath addCurveToPoint: CGPointMake(31, 5) controlPoint1: CGPointMake(19.83, 6.9) controlPoint2: CGPointMake(25.19, 5)];
        [sadRedMaskPath addCurveToPoint: CGPointMake(57, 31) controlPoint1: CGPointMake(45.36, 5) controlPoint2: CGPointMake(57, 16.64)];
        [sadRedMaskPath closePath];
        [UIColor.redColor setFill];
        [sadRedMaskPath fill];

        ////// SadRedMask Inner Shadow
        CGContextSaveGState(context);
        UIRectClip(sadRedMaskPath.bounds);
        CGContextSetShadowWithColor(context, CGSizeZero, 0, NULL);

        CGContextSetAlpha(context, CGColorGetAlpha([shadowMain.shadowColor CGColor]));
        CGContextBeginTransparencyLayer(context, NULL);
        {
            UIColor* opaqueShadow = [shadowMain.shadowColor colorWithAlphaComponent: 1];
            CGContextSetShadowWithColor(context, shadowMain.shadowOffset, shadowMain.shadowBlurRadius, [opaqueShadow CGColor]);
            CGContextSetBlendMode(context, kCGBlendModeSourceOut);
            CGContextBeginTransparencyLayer(context, NULL);

            [opaqueShadow setFill];
            [sadRedMaskPath fill];

            CGContextEndTransparencyLayer(context);
        }
        CGContextEndTransparencyLayer(context);
        CGContextRestoreGState(context);


        CGContextRestoreGState(context);


        CGContextEndTransparencyLayer(context);
        CGContextRestoreGState(context);
    }


    //// EyeL Drawing
    CGRect eyeLRect = CGRectMake(faceEyeRectL.origin.x, faceEyeRectL.origin.y, faceEyeRectL.size.width, faceEyeH);
    UIBezierPath* eyeLPath = [UIBezierPath bezierPathWithOvalInRect: eyeLRect];
    CGContextSaveGState(context);
    CGContextSetShadowWithColor(context, mainShadow.shadowOffset, mainShadow.shadowBlurRadius, [mainShadow.shadowColor CGColor]);
    CGContextBeginTransparencyLayer(context, NULL);
    [eyeLPath addClip];
    CGContextDrawLinearGradient(context, eyeGradient,
        CGPointMake(CGRectGetMidX(eyeLRect), CGRectGetMaxY(eyeLRect)),
        CGPointMake(CGRectGetMidX(eyeLRect), CGRectGetMinY(eyeLRect)),
        0);
    CGContextEndTransparencyLayer(context);

    ////// EyeL Inner Shadow
    CGContextSaveGState(context);
    UIRectClip(eyeLPath.bounds);
    CGContextSetShadowWithColor(context, CGSizeZero, 0, NULL);

    CGContextSetAlpha(context, CGColorGetAlpha([justShadow.shadowColor CGColor]));
    CGContextBeginTransparencyLayer(context, NULL);
    {
        UIColor* opaqueShadow = [justShadow.shadowColor colorWithAlphaComponent: 1];
        CGContextSetShadowWithColor(context, justShadow.shadowOffset, justShadow.shadowBlurRadius, [opaqueShadow CGColor]);
        CGContextSetBlendMode(context, kCGBlendModeSourceOut);
        CGContextBeginTransparencyLayer(context, NULL);

        [opaqueShadow setFill];
        [eyeLPath fill];

        CGContextEndTransparencyLayer(context);
    }
    CGContextEndTransparencyLayer(context);
    CGContextRestoreGState(context);

    CGContextRestoreGState(context);

    [deepDark setStroke];
    eyeLPath.lineWidth = 1;
    [eyeLPath stroke];


    //// EyeR Drawing
    CGRect eyeRRect = CGRectMake(faceEyeRectR.origin.x, faceEyeRectR.origin.y, faceEyeRectR.size.width, faceEyeRectR.size.height);
    UIBezierPath* eyeRPath = [UIBezierPath bezierPathWithOvalInRect: eyeRRect];
    CGContextSaveGState(context);
    CGContextSetShadowWithColor(context, mainShadow.shadowOffset, mainShadow.shadowBlurRadius, [mainShadow.shadowColor CGColor]);
    CGContextBeginTransparencyLayer(context, NULL);
    [eyeRPath addClip];
    CGContextDrawLinearGradient(context, eyeGradient,
        CGPointMake(CGRectGetMidX(eyeRRect), CGRectGetMaxY(eyeRRect)),
        CGPointMake(CGRectGetMidX(eyeRRect), CGRectGetMinY(eyeRRect)),
        0);
    CGContextEndTransparencyLayer(context);

    ////// EyeR Inner Shadow
    CGContextSaveGState(context);
    UIRectClip(eyeRPath.bounds);
    CGContextSetShadowWithColor(context, CGSizeZero, 0, NULL);

    CGContextSetAlpha(context, CGColorGetAlpha([justShadow.shadowColor CGColor]));
    CGContextBeginTransparencyLayer(context, NULL);
    {
        UIColor* opaqueShadow = [justShadow.shadowColor colorWithAlphaComponent: 1];
        CGContextSetShadowWithColor(context, justShadow.shadowOffset, justShadow.shadowBlurRadius, [opaqueShadow CGColor]);
        CGContextSetBlendMode(context, kCGBlendModeSourceOut);
        CGContextBeginTransparencyLayer(context, NULL);

        [opaqueShadow setFill];
        [eyeRPath fill];

        CGContextEndTransparencyLayer(context);
    }
    CGContextEndTransparencyLayer(context);
    CGContextRestoreGState(context);

    CGContextRestoreGState(context);

    [deepDark setStroke];
    eyeRPath.lineWidth = 1;
    [eyeRPath stroke];


    //// Lips Drawing
    CGContextSaveGState(context);

    UIBezierPath* lipsPath = [UIBezierPath bezierPath];
    [lipsPath moveToPoint: CGPointMake(faceMouthLeftX, (faceSideMouthY - 15))];
    [lipsPath addCurveToPoint: CGPointMake(31, (faceMouthCenterY - 4)) controlPoint1: CGPointMake(faceMouthLeftX, (faceSideMouthY - 15)) controlPoint2: CGPointMake((faceMouthBottomL + 3), (faceMouthCenterY - 4))];
    [lipsPath addCurveToPoint: CGPointMake(faceMouthRightX, (faceSideMouthY - 15)) controlPoint1: CGPointMake((faceMouthBottomR - 3), (faceMouthCenterY - 4)) controlPoint2: CGPointMake(faceMouthRightX, (faceSideMouthY - 15))];
    [lipsPath addCurveToPoint: CGPointMake(31, 38) controlPoint1: CGPointMake(faceMouthRightX, (faceSideMouthY - 15)) controlPoint2: CGPointMake((faceMouthBottomR - 3), 38)];
    [lipsPath addCurveToPoint: CGPointMake(faceMouthLeftX, (faceSideMouthY - 15)) controlPoint1: CGPointMake((faceMouthBottomL + 3), 38) controlPoint2: CGPointMake(faceMouthLeftX, (faceSideMouthY - 15))];
    [lipsPath closePath];
    lipsPath.lineCapStyle = kCGLineCapRound;

    lipsPath.lineJoinStyle = kCGLineJoinRound;

    [deepDark setStroke];
    lipsPath.lineWidth = 1.5;
    [lipsPath stroke];

    CGContextRestoreGState(context);


    //// Cleanup
    CGGradientRelease(eyeGradient);
    CGGradientRelease(teethGradient);
    CGGradientRelease(faceGradient);
    CGColorSpaceRelease(colorSpace);
}

@end