Pod::Spec.new do |s|
  s.name             = "Zee5Common"
  s.version          = '1.0.0'
  s.summary          = "Zee5Common"
  s.description      = <<-DESC
                      Zee5 Common
                       DESC
  s.homepage         = 'https://github.com/applicaster-plugins/Zee5Common-iOS.git'
  s.license          = 'CMPS'
  s.author           = { "cmps" => "m.vecselboim@applicaster.com" }
  s.source           = { :git => 'git@github.com:applicaster-plugins/Zee5Common-iOS.git', :tag => s.version.to_s }

  s.platform     = :ios, '10.0'
  s.requires_arc = true

  s.public_header_files = 'Zee5Common/**/*.h'
  s.source_files = 'Zee5Common/**/*.{h,m,swift}'

  s.resources = [
    "Zee5Common/**/*.{png,xib}",
    'Zee5Common/**/*.plist',
  ]

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                  'ENABLE_BITCODE' => 'YES',
                  'SWIFT_VERSION' => '5.1'
                }

  s.dependency 'ZappPlugins'
  s.dependency 'ApplicasterSDK'
  s.dependency 'ApplicasterUIKit'
  s.dependency 'ZappSDK'

end
