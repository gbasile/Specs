Pod::Spec.new do |s|
  s.name     = 'GData'
  s.version  = '0.0.1'
  s.license  = { :type => 'Apache License, Version 2.0', :file => 'COPYING.txt'}
  s.summary  = "The Google data APIs provide a simple protocol for reading and "\
               "writing data on the web. Many Google services provide a Google data API."
  s.homepage = 'https://code.google.com/p/gdata-objectivec-client'
  s.author   = { 'The Google Data APIs team' => 'https://code.google.com/p/gdata-objectivec-client' }
  s.source   = { :svn => 'http://gdata-objectivec-client.googlecode.com/svn/trunk', :revision => 'r733' }
  s.resources = 'Source/Oauth2/Mac/GTMOAuth2Window.xib'
  s.subspec 'Core' do |gdc|
    gdc.source_files   = 'Source/ACL/*.{h,m}', 'Source/BaseClasses/*.{h,m}','Source/Clients/**/*.{h,m}',
			 'Source/Elements/*.{h,m}', 'Source/Geo/*.{h,m}', 'Source/HTTPFetcher/*.{h,m}',  
			 'Source/OAuth2/*.{h,m}', 'Source/Oauth2/Mac/*.{h,m}', 'Source/Introspection/*.{h,m}', 
			 'Source/JSON/*.{h,m}', 'Source/Media/*.{h,m}', 'Source/Networking/*.{h,m}', 
			 'Source/XMLSupport/*.{h,m}', 'Source/*.{h,m}'
    gdc.compiler_flags = '-Wno-format-extra-args', '-Wno-format-invalid-specifier', '-Wno-incompatible-pointer-types'
    gdc.libraries      = 'xml2'
    gdc.xcconfig       = { 'HEADER_SEARCH_PATHS' => '"$(SDKROOT)/usr/include/libxml2"' }
  end
  
  s.subspec 'XMLNode' do |gdxml|
    gdxml.source_files = 'Source/XMLSupport/*.{h,m}'
    gdxml.libraries    = 'xml2'
    gdxml.xcconfig     = { 'HEADER_SEARCH_PATHS' => '"$(SDKROOT)/usr/include/libxml2"' }
  end
end
