Pod::Spec.new do |s|

s.platform = :ios
s.name             = "LDFramework"
s.version          = "1.0.0"
s.summary          = "This is internal library."

s.description      = <<-DESC
This is internal library. I will not add new functions on request.
DESC

s.homepage         = "https://github.com/lazar89nis/LDFramework"
s.license          = { :type => "MIT", :file => "LICENSE" }
s.author           = { "Lazar" => "lazar89nis@gmail.com" }
s.source           = { :git => "https://github.com/lazar89nis/LDFramework.git", :tag => "#{s.version}"}

s.ios.deployment_target = "9.0"
s.source_files = "LDFramework", "LDFramework/*", "LDFramework/**/*"

end
