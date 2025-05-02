s.name = 'BkarvZebraCapacitor'
s.version = package['version']
s.summary = package['description']
s.license = package['license']
s.homepage = package['repository']['url']
s.author = package['author']
s.source = { :git => package['repository']['url'], :tag => s.version.to_s }
s.source_files = 'ios/Plugin/**/*.{swift,h,m,c,cc,mm,cpp}'
s.ios.deployment_target = '14.0'

# Properly include the Zebra library
s.vendored_libraries = 'ios/Plugin/libZSDK_API.a'

# Required frameworks
s.frameworks = 'ExternalAccessory', 'CoreBluetooth'

# Capacitor dependency
s.dependency 'Capacitor'

# Swift version
s.swift_version = '5.1'

# Library paths
s.xcconfig = { 
  'LIBRARY_SEARCH_PATHS' => '$(PODS_TARGET_SRCROOT)/ios/Plugin',
  'HEADER_SEARCH_PATHS' => '$(PODS_TARGET_SRCROOT)/ios/Plugin',
  'SWIFT_INCLUDE_PATHS' => '$(PODS_TARGET_SRCROOT)/ios/Plugin'
}

# Bridging header
s.preserve_paths = 'ios/Plugin/BkarvZebraCapacitor-Bridging-Header.h'
s.pod_target_xcconfig = {
  'SWIFT_OBJC_BRIDGING_HEADER' => '$(PODS_TARGET_SRCROOT)/ios/Plugin/BkarvZebraCapacitor-Bridging-Header.h',
  'ENABLE_BITCODE' => 'NO',
  'OTHER_LDFLAGS' => '-lZSDK_API'
}