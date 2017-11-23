[![Build Status](https://travis-ci.org/r3econ/UIView-Animation-Extensions.svg?branch=master)](https://travis-ci.org/r3econ/UIView-Animation-Extensions)
[![License](https://img.shields.io/badge/license-CC0-brightgreen.svg)](https://img.shields.io/badge/license-CC0-brightgreen.svg)
![Platform](https://img.shields.io/badge/platform-ios%20%7C%20tvos-lightgrey.svg)



<p align="center">
<img src="https://i.imgur.com/Z6lcz7d.png">
</p>

A **useful** `UIView` category containing a set of most commonly used animations like rotation, flip, shake and others.

It is designed to be **as easy to use and integrate as possible** with a goal to speed up everyday development tasks. All the methods are well documented and described. 

Furthermore, the category comes along with **a small demo project** where you can see the animations in action.

# Animations 
Extension contains helper methods for the following animations:
## Rotation
```objective-c
[boxView rotateToAngle:M_PI * 2.0f
              duration:1.0f
             direction:UIViewAnimationRotationDirectionLeft
           repeatCount:HUGE_VALF
           autoreverse:YES];
```
![Rotation](https://i.imgur.com/MjlgVKj.gif)

## Flip
```objective-c
[boxView flipWithDuration:0.3f
                direction:UIViewAnimationFlipDirectionFromLeft
              repeatCount:2
              autoreverse:NO];
```

![Flip](https://i.imgur.com/fmiWQaj.gif)

## Vertical Shake
```objective-c
[boxView shakeVertically];
```
![Vertical Shake](https://i.imgur.com/Z9zgPkE.gif)
 
## Horizontal Shake
```objective-c
[boxView shakeHorizontally];
```
![Horizontal Shake](https://i.imgur.com/JX1FWKZ.gif)
 
## Pulse
```objective-c
[boxView pulseToSize:1.1f
            duration:0.3f
              repeat:YES];
```
![Pulse](https://i.imgur.com/EEhMxJV.gif)

## Motion Effects
```objective-c
[boxView applyMotionEffects];
```
Can't be shown in a gif. Run on the device to see it in action.

# Thread Safety

UIView Animation Extensions is a category on `UIView` and - as with all `UIKit` components - it should only be accessed from the main thread.
