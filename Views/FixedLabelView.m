//
//  FixedLabelView.m
//  PreferredMaxLayoutWidthDemo
//
//  Created by Daniel Garbień on 23/11/13.
//  Copyright (c) 2013 Daniel Garbień. All rights reserved.
//

#import "FixedLabelView.h"
#import "LabelView+Subclass.h"

@implementation FixedLabelView

#pragma mark - Overidden

- (void)layoutSubviews
{
    // This trick is taken from: http://www.objc.io/issue-3/advanced-auto-layout-toolbox.html
    // It's not needed in iOS 7 as preferredMaxLayoutWidth is set by the system.
    if (floor(NSFoundationVersionNumber) <= NSFoundationVersionNumber_iOS_6_1) {
        [super layoutSubviews];
        self.label.preferredMaxLayoutWidth = self.label.bounds.size.width;
    }

    [super layoutSubviews];
}

@end
