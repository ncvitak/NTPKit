Pod::Spec.new do |s|
	s.name = 'NTPKit'
	s.version = '1.0.0'
	s.summary = 'A Simple NTP framework for iOS'
	s.homepage = 'https://github.com/ncvitak/NTPKit'
	s.license = { :type => 'Apache', :file => 'LICENSE' }
	s.source = { :git => 'https://github.com/ncvitak/NTPKit.git', :tag => '1.0.0' }
	s.author = { 'Nicholas Cvitak' => 'ncvitak@gmail.com' }
	s.ios.deployment_target = '8.0'
	s.source_files = 'NTPKit/*.{c,h,m}'
	s.requires_arc = true	
end
