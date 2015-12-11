//
//  SecondViewController.h
//  MVVMdemo
//
//  Created by plusub on 12/11/15.
//  Copyright © 2015 plusub. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewModel.h"

@interface SecondViewController : UIViewController
- (instancetype)initWithViewModel:(SecondViewModel *)viewModel;

@end
