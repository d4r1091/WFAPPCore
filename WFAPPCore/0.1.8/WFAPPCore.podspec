Pod::Spec.new do |s|
  s.name = "WFAPPCore"
  s.version = "0.1.8"
  s.summary = "WFAPP Core for code shared across platforms"
  s.description  = <<-DESC
    iOS Podspec for WFAPPCore for sharing between iOS and Server
    DESC
  s.homepage = "https://github.com/d4r1091/WFAPPCore.git"
  s.license = "MIT"
  s.author = "Dario Carlomagno"
  s.platform = :ios, "11.0"
  s.source = { :git => "https://github.com/d4r1091/WFAPPCore.git",
		           :tag => "#{s.version}" }
  s.source_files = "Sources/WFAPPCore/**/*.swift"
  s.swift_version = '5.0'
end
