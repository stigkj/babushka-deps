dep 'Remove animations' do
  requires 'Remove animation when opening and closing windows and popovers.osx_defaults',
           'Remove animation when hiding and showing the Dock.osx_defaults',
           'Remove animation for opening applications from the Dock.osx_defaults',
           'Change animation for minimizing and maximizing windows.osx_defaults',
           'Remove smooth scrolling.osx_defaults',
           'Remove animation for many parts.osx_defaults',
           'Remove animation for opening and closing Quick Look windows.osx_defaults',
           'Remove animation for windows and get info box in the Finder.osx_defaults'
end

dep 'Remove animation when opening and closing windows and popovers.osx_defaults' do
  domain 'NSGlobalDomain'
  key 'NSAutomaticWindowAnimationsEnabled'
  type 'bool'
  value 'false'
end

dep 'Remove animation when hiding and showing the Dock.osx_defaults' do
  domain 'com.apple.dock'
  key 'autohide-time-modifier'
  type 'float'
  value '0'
end

dep 'Remove animation for opening applications from the Dock.osx_defaults' do
  domain 'com.apple.dock'
  key 'launchanim'
  type 'bool'
  value 'false'
end

dep 'Change animation for minimizing and maximizing windows.osx_defaults' do
  domain 'com.apple.dock'
  key 'mineffect'
  type 'string'
  value 'scale'
end

dep 'Remove smooth scrolling.osx_defaults' do
  domain 'NSGlobalDomain'
  key 'NSScrollAnimationEnabled'
  type 'bool'
  value 'false'
end

# Actually removes animation for:
# - showing and hiding sheets
# - resizing preference windows
# - zooming windows
#
# float == 0 does not work
dep 'Remove animation for many parts.osx_defaults' do
  domain 'NSGlobalDomain'
  key 'NSWindowResizeTime'
  type 'float'
  value '0.001'
end

dep 'Remove animation for opening and closing Quick Look windows.osx_defaults' do
  domain 'NSGlobalDomain'
  key 'QLPanelAnimationDuration'
  type 'float'
  value '0'
end

dep 'Remove animation for windows and get info box in the Finder.osx_defaults' do
  domain 'com.apple.finder'
  key 'DisableAllAnimations'
  type 'bool'
  value 'true'
end
