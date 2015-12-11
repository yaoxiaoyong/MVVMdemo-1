//
//  MVVMdemoImpl.m
//  MVVMdemo
//
//  Created by plusub on 12/11/15.
//  Copyright © 2015 plusub. All rights reserved.
//

#import "MVVMdemoImpl.h"
#import "SecondViewModel.h"
#import "SecondViewController.h"

@interface MVVMdemoImpl ()
@property (strong, nonatomic) UINavigationController *navigationController;
@end

@implementation MVVMdemoImpl
- (instancetype)initWithNavigationController:(UINavigationController *)navigationController
{
    self = [super init];
    if (self) {
        self.navigationController = navigationController;
    }
    return self;
}

-(void)pushViewModel:(id)viewModel
{
    id viewController;
    if ([viewModel isKindOfClass:SecondViewModel.class]) {
        viewController = [[SecondViewController alloc] initWithViewModel:viewModel];
    } else {
        NSLog(@"an unknown ViewModel was pushed!");
    }
    
    [self.navigationController pushViewController:viewController animated:YES];
}
@end
