[![Build Status](https://travis-ci.org/r3econ/animation-extensions.svg?branch=master)](https://travis-ci.org/r3econ/animation-extensions)
[![License](https://img.shields.io/badge/license-CC0-brightgreen.svg)](https://img.shields.io/badge/license-CC0-brightgreen.svg)
![Platform](https://img.shields.io/badge/platform-ios%20%7C%20tvos-lightgrey.svg)
![Release](https://img.shields.io/github/release/r3econ/animation-extensions.svg)

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

# Installation

The recommended approach for installing Animation Extensions is via the [CocoaPods](http://cocoapods.org/) package manager, as it provides flexible dependency management and dead simple installation.

### via CocoaPods

Install CocoaPods if not already available:

``` bash
$ [sudo] gem install cocoapods
$ pod setup
```

Change to the directory of your Xcode project, and Create and Edit your `Podfile` and add Animation Extensions:

``` bash
$ cd /path/to/MyProject
$ touch Podfile
$ edit Podfile
target "YOUR PROJECT" do
	platform :ios, '11.0'
	pod 'UIView+AnimationExtensions', '~> 2.0.0'
end
```

Install into your project:

``` bash
$ pod install
```

Open your project in Xcode from the .xcworkspace file (not the usual project file)

``` bash
$ open MyProject.xcworkspace
```

Please note that if your installation fails, it may be because you are installing with a version of Git lower than CocoaPods is expecting. You can get a full picture of the installation details by executing `pod install --verbose`.

## Using Animation Extensions in a Swift Project

Install Animation Extensions using one of the above methods. Then 

1. If Animation Extensions are built as a dynamic framework, add:

    `@import UIView+AnimationExtensions;` 

2. If Animation Extensions are built as a static library, add into the bridging header for your Swift project:

    `#import <UIView+AnimationExtensions/UIView+AnimationExtensions.h>` 

# Thread Safety

UIView Animation Extensions is a category on `UIView` and - as with all `UIKit` components - it should only be accessed from the main thread.


# License

This code is distributed under the terms and conditions of the [CC0 v1.0](https://creativecommons.org/publicdomain/zero/1.0/) license.

Copyright (c) 2017 Rafał Sroka

# Credits

Animation Extensions are brought to you by [Rafał Sroka](https://r3econ.github.io/).
