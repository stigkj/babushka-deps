dep 'Enable password-protected screensaver' do
  requires 'Turn on password-protected screensaver.osx_defaults',
           'Wait a delay before passwords are needed on screensaver.osx_defaults'
end

dep 'Turn on password-protected screensaver.osx_defaults' do
  domain 'com.apple.screensaver'
  key 'askForPassword'
  type 'int'
  value '1'
end

dep 'Wait a delay before passwords are needed on screensaver.osx_defaults' do
  domain 'com.apple.screensaver'
  key 'askForPasswordDelay'
  type 'int'
  value '60'
end
