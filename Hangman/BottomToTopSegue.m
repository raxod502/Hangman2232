//
//  BottomToTopSegue.m
//  Hangman
//
//  Created by Radon Rosborough on 5/3/13.
//  Copyright (c) 2013 Raxod502. All rights reserved.
//

#import "BottomToTopSegue.h"

@implementation BottomToTopSegue

- (void)perform {
    CATransition *trans = [CATransition animation];
    [trans setDuration:0.25];
    [trans setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut]];
    [trans setType:kCATransitionPush];
    [trans setSubtype:kCATransitionFromTop];
    [[[[[self sourceViewController] navigationController] view] layer] addAnimation:trans forKey:kCATransition];
    [[[self sourceViewController] navigationController] pushViewController:[self destinationViewController] animated:NO];
}

@end
