@interface UIView (AnimationExtensions)

/**
 @brief Shakes the view horizontally for a short period of time.
 */
- (void)shakeHorizontally;

- (void)shakeVertically;


/**
 @brief Adds a motion effect to the view. Similar effect can be seen in the 
 background of the Home Screen on iOS 7.
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


- (void)spinWithDuration:(NSTimeInterval)duration rotations:(CGFloat)rotations repeat:(float)repeat;

- (void)rotate;

- (void)stopAnimation;

- (BOOL)isBeingAnimated;

@end