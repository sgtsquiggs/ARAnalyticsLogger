Pod::Spec.new do |s|
  s.name             = "ARAnalyticsLogger"
  s.version          = "1.0.1"
  s.summary          = "A bridge between CocoaLumberjack and ARAnalytics."
  s.description      = <<-DESC
                       Provides a logger to log via ARAnalytics' ARLog macro.
                       DESC
  s.homepage         = "https://github.com/sgtsquiggs/ARAnalyticsLogger"
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { "Matthew Crenshaw" => "sgt@squig.gs" }
  s.source           = { :git => "https://github.com/sgtsquiggs/ARAnalyticsLogger.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/sgtsquiggs'

  s.requires_arc = true
  s.ios.deployment_target = '7.0'
  s.osx.deployment_target = '10.7'

  s.source_files = 'Source/ARAnalyticsLogger.{h,m}'

  s.dependency 'CocoaLumberjack/Default', '~> 2.0'
  s.osx.dependency 'ARAnalytics/CoreMac'
  s.ios.dependency 'ARAnalytics/CoreIOS'
end
