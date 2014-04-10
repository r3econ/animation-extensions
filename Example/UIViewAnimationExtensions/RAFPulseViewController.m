//
//  RAFPulseViewController
//  UIViewAnimationExtensions
//
//  Created by Rafal Sroka on 10/04/14.
//
//  License CC0.
//  This is free and unencumbered software released into the public domain.
//
//  Anyone is free to copy, modify, publish, use, compile, sell, or
//  distribute this software, either in source code form or as a compiled
//  binary, for any purpose, commercial or non-commercial, and by any means.
//


#import "RAFPulseViewController.h"

@interface RAFPulseViewController ()

@property(nonatomic, weak) IBOutlet UIImageView *boxView;

@end


@implementation RAFPulseViewController


- (IBAction)buttonTapped:(id)sender
{
    if ([_boxView isBeingAnimated])
    {
        [_boxView stopAnimation];
    }
    else
    {
        [_boxView pulseToSize:1.2f
                     duration:0.4f
                       repeat:YES];
    }
}


@end