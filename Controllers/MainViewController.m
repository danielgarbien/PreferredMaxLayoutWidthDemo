//
//  MainViewController.m
//  PreferredMaxLayoutWidthDemo
//
//  Created by Daniel Garbień on 23/11/13.
//  Copyright (c) 2013 Daniel Garbień. All rights reserved.
//

#import "MainViewController.h"
#import "LabelView.h"
#import "FixedLabelView.h"

@interface MainViewController ()

@property (weak, nonatomic) IBOutlet LabelView * badVibesView;
@property (weak, nonatomic) IBOutlet FixedLabelView * goodVibesView;
@property (weak, nonatomic) IBOutlet FixedLabelView * goodVibesWithHeightConstraintView;

@end

@implementation MainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.badVibesView.text = @"LabelView: fine on iOS 7, clipped on iOS 6.";
    self.goodVibesView.text = @"FixedLabelView: perfectly fine on both systems.";
    self.goodVibesWithHeightConstraintView.text = @"FixedLabelView with height constraint: won't extend anywhere.";
}

@end
