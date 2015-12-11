//
//  MVVMdemoService.h
//  MVVMdemo
//
//  Created by plusub on 12/11/15.
//  Copyright © 2015 plusub. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MVVMdemoService <NSObject>
- (void)pushViewModel:(id)viewModel;
@end
