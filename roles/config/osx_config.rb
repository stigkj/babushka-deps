require 'date'

dep 'OS X config', :for => :osx do
  requires 'Homebrew zsh as default shell',
           'Turn off Gatekeeper for all applications',
           'Allow text selection in QuickLook.osx_defaults',
           'Automatically hide and show the Dock.osx_defaults',
           'Avoid creating .DS_Store files on network volumes.osx_defaults',
           'Disable menu bar transparency.osx_defaults',
           "Disable iPhone-style 'natural' scrolling.osx_defaults",
           'Disable warning when changing file extension.osx_defaults',
           "Display full POSIX path in Finder's window title.osx_defaults",
           'Enable access for assistive devices',
           'Remove auto-hiding Dock delay.osx_defaults',
           'Remove animations',
           'Show all filename extensions in Finder.osx_defaults',
           'Show hidden files by default in Finder.osx_defaults',
           'Show path bar in Finder.osx_defaults',
           'Show status bar in Finder.osx_defaults',
           'Show unsupported network volumes in TimeMachine.osx_defaults',
           'Use function keys as function keys.osx_defaults',
           'Enable full keyboard access for all controls.osx_defaults',
           'Disable Dashboard from running.osx_defaults',
           'Enable key repeat.osx_defaults',
           'Enable right click with two finger single tap',
           'Enable right click with two finger single tap',
           'Setup screensaver'

  met? { marker_file.exists? }
  meet {
    shell 'killall Finder'
    shell 'killall Dock'
    shell 'killall SystemUIServer'

    marker_file.touch
  }
end

def marker_file
  "/tmp/osx_config_killed_all_#{DateTime.now.strftime('%Y_%m_%d')}".p
end
