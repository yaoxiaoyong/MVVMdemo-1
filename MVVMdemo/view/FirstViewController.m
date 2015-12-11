//
//  FirstViewController.m
//  MVVMdemo
//
//  Created by plusub on 12/11/15.
//  Copyright © 2015 plusub. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()
@property (weak, nonatomic) IBOutlet UIButton *pushBtn;
@property (strong, nonatomic) FirstViewModel *viewModel;
@end

@implementation FirstViewController

- (instancetype)initWithViewModel:(FirstViewModel *)viewModel
{
    self = [super init];
    if (self) {
        self.viewModel = viewModel;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self bindViewModel];
}

- (void)bindViewModel
{
    self.title = self.viewModel.title;
    self.pushBtn.rac_command = self.viewModel.excutePush;
}

@end
