//
//  ViewController.h
//  FunnyFace
//
//  Created by Paolo on 08/09/2015.
//  Copyright (c) 2015 Paolo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FunnyView.h"

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet FunnyView *funnyView;
@property (strong, nonatomic) IBOutlet UISlider *slider;

- (IBAction)smile:(id)sender;

@end

