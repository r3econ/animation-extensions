@interface UIView (AnimationExtensions)


- (void)shake;
- (void)applyMotionEffects;

/**
 @brief Performs a pulsing scale animation on a view.
 @param duration - duration of the animation
 @param repeat - pass YES for the animation to repeat.
 */
- (void)pulseToSize:(CGFloat)scale
           duration:(NSTimeInterval)duration
             repeat:(BOOL)repeat;


@end