//
//  MVVMdemoImpl.h
//  MVVMdemo
//
//  Created by plusub on 12/11/15.
//  Copyright © 2015 plusub. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MVVMdemoService.h"

@interface MVVMdemoImpl : NSObject <MVVMdemoService>
- (instancetype)initWithNavigationController:(UINavigationController *)navigationController;
@end
