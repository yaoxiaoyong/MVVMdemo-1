//
//  FirstViewModel.h
//  MVVMdemo
//
//  Created by plusub on 12/11/15.
//  Copyright © 2015 plusub. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FirstViewModel.h"
#import "MVVMdemoService.h"

@interface FirstViewModel : NSObject
@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) RACCommand *excutePush;

-(instancetype)initWithService:(id<MVVMdemoService>)service;
@end
