//
//  RAFDetailViewController.m
//  UIViewAnimationExtensions
//
//  Created by Rafal Sroka on 11.04.14.
//
//  License CC0.
//  This is free and unencumbered software released into the public domain.
//
//  Anyone is free to copy, modify, publish, use, compile, sell, or
//  distribute this software, either in source code form or as a compiled
//  binary, for any purpose, commercial or non-commercial, and by any means.
//

#import "RAFDetailViewController.h"

@interface RAFDetailViewController ()

@property(nonatomic, weak) IBOutlet UIImageView *boxView;

@end


@implementation RAFDetailViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"BackgroundTile"]];
    self.title = [self titleString];
}


#pragma mark - Actions


- (IBAction)buttonTapped:(id)sender
{
    if ([_boxView isBeingAnimated])
    {
        [_boxView stopAnimation];
    }
    else
    {
        [self startAnimation];
    }
}


- (void)startAnimation
{
    switch (_mode)
    {
        case RAFDetailViewControllerMode_ShakeHorizontal:
        {
            [_boxView shakeHorizontally];
            break;
        }
        case RAFDetailViewControllerMode_ShakeVertical:
        {
            [_boxView shakeVertically];
            break;
        }
        case RAFDetailViewControllerMode_MotionEffects:
        {
            [_boxView applyMotionEffects];
            break;
        }
        case RAFDetailViewControllerMode_Pulse:
        {
            [_boxView pulseToSize:1.1f
                         duration:0.3f
                           repeat:YES];
            break;
        }
        case RAFDetailViewControllerMode_Spin:
        {
            [_boxView spinWithDuration:1.0f
                             rotations:2
                                repeat:1];
            break;
        }
        case RAFDetailViewControllerMode_Rotate:
        {
            [_boxView rotate];
            break;
        }
        default:
            break;
    }
}


#pragma mark - Appearance


- (NSString *)titleString
{
    switch (_mode)
    {
        case RAFDetailViewControllerMode_ShakeHorizontal: return @"Horizontal shake";
        case RAFDetailViewControllerMode_ShakeVertical: return @"Vertical shake";
        case RAFDetailViewControllerMode_MotionEffects: return @"Motion effects";
        case RAFDetailViewControllerMode_Pulse: return @"Pulse";
        case RAFDetailViewControllerMode_Rotate: return @"Rotate";
        case RAFDetailViewControllerMode_Spin: return @"Spin";
        default: return nil;
    }
}



@end
