//
//  FirstViewModel.m
//  MVVMdemo
//
//  Created by plusub on 12/11/15.
//  Copyright © 2015 plusub. All rights reserved.
//

#import "FirstViewModel.h"
#import "SecondViewModel.h"

@interface FirstViewModel ()
@property (weak, nonatomic) id<MVVMdemoService> service;
@end

@implementation FirstViewModel

-(instancetype)initWithService:(id<MVVMdemoService>)service
{
    self = [super init];
    if (self) {
        self.service = service;
        [self initialize];
    }
    return self;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self initialize];
    }
    return self;
}

- (void)initialize
{
    self.title = @"firstVC";
    self.excutePush = [[RACCommand alloc] initWithSignalBlock:^RACSignal *(id input) {
        NSLog(@"test signal");
        SecondViewModel *viewModel = [[SecondViewModel alloc] init];
        [self.service pushViewModel:viewModel];
        return [RACSignal empty];
    }];
}
@end
