##UIView Animation Extensions 

A **useful** category on `UIView` containing a set of most commonly used animations like rotation or flip and others.

It is designed to be **as easy to use as possible to integrate and use** to speed up everyday development tasks. All the methods are well documented and described. 

Furthermore, the category comes along with **a small demo project** where you can see the animations in action. Current version of the category includes following animations:

 - Rotation

![Rotation](https://dl.dropboxusercontent.com/u/7121070/github/UIView-Animation-Extensions/rotate.gif)

 - Flip

![Flip](https://dl.dropboxusercontent.com/u/7121070/github/UIView-Animation-Extensions/flip.gif)

 - Horizontal and Vertical Shake

![Shake](https://dl.dropboxusercontent.com/u/7121070/github/UIView-Animation-Extensions/horizontal_shake.gif)

 - Pulse

![Pulse](https://dl.dropboxusercontent.com/u/7121070/github/UIView-Animation-Extensions/pulse.gif)

 - Motion Effects (Unfortunately this cannot be shown using an animated GIF.)


##Full Documentation with Animated GIFs 

For full documentation (with animated GIFs that show the animations) and installation instruction visit: [http://wp.me/p4yiBH-wr](http://wp.me/p4yiBH-wr)

##ARC Compatibility

UIView Animation Extensions requires ARC. If you wish to use it in a non-ARC project, just add the -fobjc-arc compiler flag to the UIView+AnimationExtensions.m category. To do this, go to the Build Phases tab in your target settings, open the Compile Sources group, double-click SwipeView.m in the list and type -fobjc-arc into the popover.

##Thread Safety

UIView Animation Extensions is a category on UIView and - as with all UIKit components - it should only be accessed from the main thread.
