require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name = 'BkarvZebraCapacitor'
  s.version = package['version']
  s.summary = package['description']
  s.license = package['license']
  s.homepage = package['repository']['url']
  s.author = package['author']
  s.source = { :git => package['repository']['url'], :tag => s.version.to_s }
  s.source_files = 'ios/Plugin/**/*.{swift,m,c,cc,mm,cpp}'
  s.public_header_files = 'ios/Plugin/*.h'
  s.ios.deployment_target = '14.0'

  # Properly include the Zebra library
  s.vendored_libraries = 'ios/Plugin/libZSDK_API.a'

  # Required frameworks
  s.frameworks = 'ExternalAccessory', 'CoreBluetooth'

  # Capacitor dependency
  s.dependency 'Capacitor'

  # Swift version
  s.swift_version = '5.1'

  # Properly expose headers
  s.public_header_files = 'ios/Plugin/*.h'
  
  # Add module map instead of bridging header
  s.module_map = 'ios/Plugin/BkarvZebraCapacitor.modulemap'

  # Library paths
  s.xcconfig = { 
    'LIBRARY_SEARCH_PATHS' => '$(PODS_TARGET_SRCROOT)/ios/Plugin',
    'HEADER_SEARCH_PATHS' => '$(PODS_TARGET_SRCROOT)/ios/Plugin',
    'SWIFT_INCLUDE_PATHS' => '$(PODS_TARGET_SRCROOT)/ios/Plugin'
  }

  # Remove bridging header configuration
  s.pod_target_xcconfig = {
    'ENABLE_BITCODE' => 'NO',
    'OTHER_LDFLAGS' => '-lZSDK_API'
  }
end