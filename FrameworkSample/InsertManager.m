//
//  InsertManager.m
//  FrameworkSample
//
//  Created by Sathish on 19/04/17.
//  Copyright © 2017 Optisol Business Solutions pvt ltd. All rights reserved.
//

#import "InsertManager.h"
#import "CustomView.h"

@interface InsertManager()

@property (nonatomic) BOOL isEnabled;

@end


@implementation InsertManager

+ (instancetype) sharedManager {
    static InsertManager *sharedManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedManager = [[[self class] alloc] init];
    });
    return sharedManager;
}

- (void) startManager {
    NSLog(@"Manager is running");
    _isEnabled = YES;
}

- (void) stopManager {
    NSLog(@"Manager stopped..");
    _isEnabled = NO;
}

-(BOOL) isManagerRunning {
    return _isEnabled;
}

-(void) showMessageInViewController:(UIViewController *)viewController {
    if (_isEnabled) {
        NSBundle* frameworkBundle = [NSBundle bundleForClass:[self class]];
        CustomView *csView = [[frameworkBundle loadNibNamed:@"CustomView" owner:self options:nil] firstObject];
        csView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height);
        [viewController.view addSubview:csView];
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
