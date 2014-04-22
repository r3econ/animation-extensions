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

@interface RAFDetailViewController()

@property(nonatomic, weak) IBOutlet UIImageView *boxView;

@end


@implementation RAFDetailViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"BackgroundTile"]];
    
    [self configureNavigationBar];
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
        case RAFDetailViewControllerMode_Flip:
        {
            [_boxView flipWithDuration:0.3f
                             direction:UIViewAnimationFlipDirectionFromLeft
                           repeatCount:2
                           autoreverse:NO];
            break;
        }
        case RAFDetailViewControllerMode_Rotate:
        {
            [_boxView rotateToAngle:M_PI * 2.0f
                           duration:1.0f
                          direction:UIViewAnimationRotationDirectionLeft
                        repeatCount:HUGE_VALF
                        autoreverse:YES];
            break;
        }
        default:
            break;
    }
}


#pragma mark - Appearance


- (void)configureNavigationBar
{
    switch (_mode)
    {
        case RAFDetailViewControllerMode_ShakeHorizontal:
            self.title = @"Horizontal shake";
            break;
        case RAFDetailViewControllerMode_ShakeVertical:
            self.title = @"Vertical shake";
            break;
        case RAFDetailViewControllerMode_MotionEffects:
            self.title = @"Motion effects";
            self.navigationItem.prompt = @"Tilt the device to see the effect";
            break;
        case RAFDetailViewControllerMode_Pulse:
            self.title = @"Pulse";
            break;
        case RAFDetailViewControllerMode_Rotate:
            self.title = @"Rotate";
            break;
        case RAFDetailViewControllerMode_Flip:
            self.title = @"Flip";
            break;
        default: break;
    }
}



@end
