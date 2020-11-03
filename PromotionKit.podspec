Pod::Spec.new do |s|
  s.name             = 'PromotionKit'
  s.version          = '0.1.0'
  s.summary          = 'PromotionKit PromotionKit PromotionKit PromotionKit'
  s.homepage         = 'https://github.com/iosLiuPeng/PromotionKit.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'iosLiuPeng' => '392009255@qq.com' }
  s.source           = { :git => 'git@git.musjoy.com:PromotionKit.git', :tag => "v-#{s.version}" }
  s.platform     = :ios 
  s.ios.deployment_target = '11.0'

  s.subspec 'Core' do |ss|
    ss.source_files = 'Classes/Core/*.{h,m}'
    ss.resources = ["Assets/*"]
  end

  
  s.default_subspec = 'Core'

  # s.frameworks = 'UIKit'

  # s.user_target_xcconfig = {
  #       'GCC_PREPROCESSOR_DEFINITIONS' => 'MODULE_PUSH_KIT'
  # }

end
