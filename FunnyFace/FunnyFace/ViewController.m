//
//  ViewController.m
//  FunnyFace
//
//  Created by Paolo on 08/09/2015.
//  Copyright (c) 2015 Paolo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Draw initial face expression
    self.funnyView.happiness    = self.slider.value;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)smile:(id)sender {
    self.funnyView.happiness    = ((UISlider *)sender).value;
}
@end
