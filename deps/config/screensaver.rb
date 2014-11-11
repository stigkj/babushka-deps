dep 'Setup screensaver' do
  requires 'Turn on screensaver after 5 minutes (system default).osx_defaults',
           'Turn on password-protected screensaver.osx_defaults',
           'Wait 1 minute before passwords are needed on screensaver.osx_defaults'
end

dep 'Turn on screensaver after 5 minutes (system default).osx_defaults' do
  current_host true
  domain 'com.apple.screensaver'
  key 'idleTime'
  type 'int'
  value '300'
end

dep 'Turn on password-protected screensaver.osx_defaults' do
  domain 'com.apple.screensaver'
  key 'askForPassword'
  type 'int'
  value '1'
end

dep 'Wait 1 minute before passwords are needed on screensaver.osx_defaults' do
  domain 'com.apple.screensaver'
  key 'askForPasswordDelay'
  type 'int'
  value '60'
end
