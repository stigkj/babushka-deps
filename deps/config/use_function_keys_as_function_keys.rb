# TODO seems one must logout or reboot for this to take effect
dep 'Use function keys as function keys.osx_defaults' do
  domain 'NSGlobalDomain'
  key 'com.apple.keyboard.fnState'
  type 'bool'
  value 'true'
end
