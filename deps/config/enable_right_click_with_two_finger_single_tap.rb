dep 'Enable right click with two finger single tap' do
  requires 'TrackpadCornerSecondaryClick.osx_defaults',
           'TrackpadRightClick.osx_defaults',
           'trackpadCornerClickBehavior.osx_defaults',
           'enableSecondaryClick.osx_defaults'
end

dep 'TrackpadCornerSecondaryClick.osx_defaults' do
  domain 'com.apple.driver.AppleBluetoothMultitouch.trackpad'
  key 'TrackpadCornerSecondaryClick'
  type 'int'
  value '0'
end

dep 'TrackpadRightClick.osx_defaults' do
  domain 'com.apple.driver.AppleBluetoothMultitouch.trackpad'
  key 'TrackpadRightClick'
  type 'bool'
  value 'true'
end

dep 'trackpadCornerClickBehavior.osx_defaults' do
  current_host true
  domain 'NSGlobalDomain'
  key 'com.apple.trackpad.trackpadCornerClickBehavior'
  type 'int'
  value '0'
end

dep 'enableSecondaryClick.osx_defaults' do
  current_host true
  domain 'NSGlobalDomain'
  key 'com.apple.trackpad.enableSecondaryClick'
  type 'bool'
  value 'true'
end
