Pod::Spec.new do |s|

s.platform = :ios
s.name             = "LDMainFramework"
s.version          = "1.0.2"
s.swift_versions = ['5.0']
s.summary          = "This is internal library."

s.description      = <<-DESC
This is internal library. I will not add new functions on request.
DESC

s.homepage         = "https://github.com/lazar89nis/LDMainFramework"
s.license          = { :type => "MIT", :file => "LICENSE" }
s.author           = { "Lazar" => "lazar89nis@gmail.com" }
s.source           = { :git => "https://github.com/lazar89nis/LDMainFramework.git", :tag => "#{s.version}"} 

s.ios.deployment_target = "10.0"
s.source_files = "LDMainFramework", "LDMainFramework/*", "LDMainFramework/**/*"

end
