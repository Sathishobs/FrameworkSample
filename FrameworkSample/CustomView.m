//
//  CustomView.m
//  FrameworkSample
//
//  Created by Sathish on 19/04/17.
//  Copyright © 2017 Optisol Business Solutions pvt ltd. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView

- (IBAction)closeButtonClicked:(id)sender {
    [self removeFromSuperview];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
