//
//  Created by Rafal Sroka
//
//  License CC0.
//  This is free and unencumbered software released into the public domain.
//
//  Anyone is free to copy, modify, publish, use, compile, sell, or
//  distribute this software, either in source code form or as a compiled
//  binary, for any purpose, commercial or non-commercial, and by any means.
//


/**
 @brief Direction of flip animation.
 */
typedef NS_ENUM(NSUInteger, UIViewAnimationFlipDirection)
{
    UIViewAnimationFlipDirectionFromTop,
    UIViewAnimationFlipDirectionFromLeft,
    UIViewAnimationFlipDirectionFromRight,
    UIViewAnimationFlipDirectionFromBottom,
};


/**
 @brief Direction of rotation animation.
 */
typedef NS_ENUM(NSUInteger, UIViewAnimationRotationDirection)
{
    UIViewAnimationRotationDirectionRight,
    UIViewAnimationRotationDirectionLeft
};


@interface UIView (AnimationExtensions)

/**
 @brief Shakes the view horizontally for a short period of time.
 */
- (void)shakeHorizontally;


/**
 @brief Shakes the view vertically for a short period of time.
 */
- (void)shakeVertically;


/**
 @brief Adds a motion effect to the view. Similar effect can be seen in the 
 background of the Home Screen on iOS 7.
 @note Motion effects are available starting from iOS 7. Calling this method on 
 older iOS will be ignored.
 */
- (void)applyMotionEffects;


/**
 @brief Performs a pulsing scale animation on a view.
 @param duration - duration of the animation
 @param repeat - pass YES for the animation to repeat.
 */
- (void)pulseToSize:(CGFloat)scale
           duration:(NSTimeInterval)duration
             repeat:(BOOL)repeat;


/**
 @brief Performs a 3D-like flip animation of the view around center X or Y axis.
 @param duration - total time of the animation.
 @param direction - direction of the flip movement.
 @param repeatCount - number of repetitions of the animation. Pass HUGE_VALF to repeat forever.
 @param shouldAutoreverse - pass YES to make the animation reverse when it reaches the end.
 */
- (void)flipWithDuration:(NSTimeInterval)duration
               direction:(UIViewAnimationFlipDirection)direction
             repeatCount:(NSUInteger)repeatCount
             autoreverse:(BOOL)shouldAutoreverse;


/**
 @brief Performs a rotation animation of the view around its anchor point.
 @param angle - end angle of the rotation. Pass M_PI * 2.0 for full circle rotation.
 @param duration - total time of the animation.
 @param direction - left or right direction of the rotation.
 @param repeatCount - number of repetitions of the animation. Pass HUGE_VALF to repeat forever.
 @param shouldAutoreverse - pass YES to make the animation reverse when it reaches the end.
 */
- (void)rotateToAngle:(CGFloat)angle
             duration:(NSTimeInterval)duration
            direction:(UIViewAnimationRotationDirection)direction
          repeatCount:(NSUInteger)repeatCount
          autoreverse:(BOOL)shouldAutoreverse;


/**
 @brief Stops current animations.
 */
- (void)stopAnimation;


/**
 @brief Checks if the view is being animated.
 */
- (BOOL)isBeingAnimated;


@end