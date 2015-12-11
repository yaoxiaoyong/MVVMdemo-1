//
//  FirstViewController.h
//  MVVMdemo
//
//  Created by plusub on 12/11/15.
//  Copyright © 2015 plusub. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FirstViewModel.h"

@interface FirstViewController : UIViewController
- (instancetype)initWithViewModel:(FirstViewModel *)viewModel;
@end
