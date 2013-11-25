//
//  LabelView.m
//  PreferredMaxLayoutWidthDemo
//
//  Created by Daniel Garbień on 23/11/13.
//  Copyright (c) 2013 Daniel Garbień. All rights reserved.
//

#import "LabelView.h"

@interface LabelView ()

@property (strong, nonatomic) UILabel * label;

@end

@implementation LabelView

#pragma mark - Public Properties

- (void)setText:(NSString *)text
{
    self.label.text = text;
}

- (NSString *)text
{
    return self.label.text;
}

#pragma mark - Overidden

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initialize];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self initialize];
    }
    return self;
}

- (void)updateConstraints
{
    NSNumber * padding = @(4);
    NSDictionary * metrics = NSDictionaryOfVariableBindings(padding);
    NSDictionary * views = NSDictionaryOfVariableBindings(_label);
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-padding-[_label]-padding-|"
                                                                 options:0
                                                                 metrics:metrics
                                                                   views:views]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-padding-[_label]-padding-|"
                                                                 options:0
                                                                 metrics:metrics
                                                                   views:views]];
    [super updateConstraints];
}

#pragma mark - Private Methods

- (void)initialize
{
    self.label = [[UILabel alloc] init];
    self.label.textColor = [UIColor colorWithRed:88/255.0 green:97/255.0 blue:119/255.0 alpha:1];
    self.label.numberOfLines = 0;
    self.label.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:self.label];
}

@end
