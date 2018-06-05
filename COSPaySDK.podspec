
Pod::Spec.new do |s|


  s.name         = "COSPaySDK"
  s.version      = "1.0.1"
  s.summary      = "COSPaySDK，用于唤起COSPay支付"

  s.description  = <<-DESC
                   COSPaySDK工程.
                   DESC

  s.homepage     = "https://github.com/zhanbin1984/COSPay.git"

  s.license      = "MIT"

  s.author             = {"zhanbin" => "27226850@qq.com" }

  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/zhanbin1984/COSPay.git", :tag => "#{s.version}" }

  #s.dependency 'SmartCan', '~> 0.5.6' 
  #s.dependency 'UCSDK', '~> 0.10.26'
  #s.dependency 'ContentServiceSDK'

		#s.public_header_files = "#{s.name}.framework/Versions/A/**/*.h"
    #s.source_files = "#{s.name}.framework/Versions/A/**/*.h"
    s.preserve_paths = "*.framework"
    s.vendored_frameworks = "#{s.name}.framework"

end

