Pod::Spec.new do |s|
s.name         = "HZNavBackView"
s.version      = "1.0.2"
s.ios.deployment_target = '7.0'
s.summary      = "HZNavBackView 自定义导航栏."
s.homepage     = "https://github.com/zezeyu/HZNavBackView"
s.license      = { :type => "MIT", :file => "LICENSE" }
s.author             = { "heze" => "895315401@qq.com" }
s.social_media_url   = "https://weibo.com/u/3899716853"
s.source       = { :git => "https://github.com/zezeyu/HZNavBackView.git", :tag => s.version }
s.source_files  = "HZNavBackView/HZNavBackView/*.{h,m}"
# s.resource  = "icon.png"
# s.resources = "Resources/*.png"
s.requires_arc = true

# s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
s.dependency "HZGradient", "~> 1.0.3"

end
