//
//  SecondViewController.m
//  MVVMdemo
//
//  Created by plusub on 12/11/15.
//  Copyright © 2015 plusub. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
@property (strong, nonatomic) SecondViewModel *viewModel;
@end

@implementation SecondViewController

- (instancetype)initWithViewModel:(SecondViewModel *)viewModel
{
    self = [super init];
    if (self) {
        NSLog(@"132");
        self.viewModel = viewModel;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

@end
