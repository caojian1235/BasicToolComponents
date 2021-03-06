#
# Be sure to run `pod lib lint BasicToolComponents.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'BasicToolComponents'
  s.version          = '0.5.1'
  s.summary          = '基本组件'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/caojian1235/BasicToolComponents'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'caojian1235' => '404511077@qq.com' }
  s.source           = { :git => 'https://github.com/caojian1235/BasicToolComponents.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
    
  s.source_files = 'BasicToolComponents/Classes/**/*'
  s.resources = ['BasicToolComponents/Assets/*']
#  s.resource_bundles = {
#      'MVVMRAC'=>['MVVMRAC/MVVMRAC/*.{xcassets}']
#  }
  s.subspec 'Macro' do |ma|
      ma.source_files = 'BasicToolComponents/Classes/Macro/**/*'
    end
  
  s.subspec 'Category' do |category|
        category.source_files = 'BasicToolComponents/Classes/Category/**/*'
        category.dependency 'YYKit'
        category.dependency 'BasicToolComponents/Macro'
        
    end

  s.subspec 'Alert' do |alert|
      alert.source_files = 'BasicToolComponents/Classes/Alert/**/*'
      alert.dependency 'BasicToolComponents/Macro'
      alert.dependency 'BasicToolComponents/Category'
      alert.dependency 'Masonry'
    end
  s.subspec 'BaseVC' do |baseVC|
      baseVC.source_files = 'BasicToolComponents/Classes/BaseVC/**/*'
      baseVC.dependency 'GKNavigationBar'
      baseVC.dependency 'MJRefresh'
      baseVC.dependency 'LYEmptyView'
      baseVC.dependency 'Masonry'
      baseVC.dependency 'MBProgressHUD'
      baseVC.dependency 'BasicToolComponents/Loading'
      baseVC.dependency 'BasicToolComponents/Alert'
      baseVC.dependency 'BasicToolComponents/Macro'
      baseVC.dependency 'BasicToolComponents/Category'
    end

  s.subspec 'NSLogHelper' do |nsLogHelper|
      nsLogHelper.source_files = 'BasicToolComponents/Classes/NSLogHelper/**/*'

    end

  s.subspec 'XHLaunchAd' do |xhLaunchAd|
      xhLaunchAd.source_files = 'BasicToolComponents/Classes/XHLaunchAd/**/*'

    end

  s.subspec 'YBImageBrowser' do |ybimageBrowser|
      ybimageBrowser.source_files = 'BasicToolComponents/Classes/YBImageBrowser/**/*'
      s.dependency 'SDWebImage'
    end
  s.subspec 'ZZJsonToModel' do |zzjsonToModel|
      zzjsonToModel.source_files = 'BasicToolComponents/Classes/ZZJsonToModel/**/*'

    end
  s.subspec 'Loading' do |loading|
      loading.source_files = 'BasicToolComponents/Classes/Loading/**/*'
      loading.dependency 'MBProgressHUD'
      loading.dependency 'BasicToolComponents/Category'
      loading.dependency 'YYKit'
    end
 
  # s.resource_bundles = {
  #   'BasicToolComponents' => ['BasicToolComponents/Assets/*.png']
  # }
#  s.prefix_header_contents = '#import "YSKDefineMacro.pch"'
#s.prefix_header_contents = <<-EOS
##ifdef __OBJC__
#
##import "YSKDefineMacro.pch"
#
#
##endif /* __OBJC__*/
#EOS

  # s.prefix_header_contents ='#import "BasicToolComponents.pch"'
  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
   
end
