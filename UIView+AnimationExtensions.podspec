Pod::Spec.new do |s|

  s.name         = "UIView+AnimationExtensions"
  s.version      = "2.0.1"
  s.summary      = "A useful UIView category containing a set of most commonly used animations"

  s.description  = <<-DESC
A useful UIView category containing a set of most commonly used animations like rotation, flip, shake and others.
It is designed to be as easy to use and integrate as possible with a goal to speed up everyday development tasks. All the methods are well documented and described. 
The category comes along with a small demo project where you can see the animations in action.
                   DESC

  s.homepage     = "https://github.com/r3econ/animation-extensions"
  s.documentation_url = "https://github.com/r3econ/animation-extensions"

  s.license      = "CC0"

  s.author             = { "Rafał Sroka" => "r4ffal@gmail.com" }
  s.social_media_url   = "https://twitter.com/r3econ"

  s.platform     = :ios, "11.0"

  s.source       = { :git => "https://github.com/r3econ/animation-extensions.git", :tag => "2.0.0" }

  s.source_files  = "Classes", "Classes/*.{h,m}"
  s.exclude_files = "Classes/Exclude"
  s.requires_arc = true

end
