dep 'Avoid creating .DS_Store files on network volumes.osx_defaults' do
  domain 'com.apple.desktopservices'
  key 'DSDontWriteNetworkStores'
  type 'bool'
  value 'true'
end
