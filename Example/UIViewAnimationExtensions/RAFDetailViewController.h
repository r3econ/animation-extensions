//
//  RAFDetailViewController.h
//  UIViewAnimationExtensions
//
//  Created by Rafal Sroka on 11.04.14.
//  Copyright (c) 2014 Rafal Sroka. All rights reserved.
//
//
//  License CC0.
//  This is free and unencumbered software released into the public domain.
//
//  Anyone is free to copy, modify, publish, use, compile, sell, or
//  distribute this software, either in source code form or as a compiled
//  binary, for any purpose, commercial or non-commercial, and by any means.
//


typedef NS_ENUM(NSUInteger, RAFDetailViewControllerMode)
{
    RAFDetailViewControllerMode_ShakeHorizontal,
    RAFDetailViewControllerMode_ShakeVertical,
    RAFDetailViewControllerMode_Pulse,
    RAFDetailViewControllerMode_MotionEffects,
    RAFDetailViewControllerMode_Rotate,
    RAFDetailViewControllerMode_Flip,
};


@interface RAFDetailViewController : UIViewController

@property(nonatomic, assign) RAFDetailViewControllerMode mode;

@end