dep 'Alfred', :for => :osx do
  requires 'alfred.cask',
           'com.runningwithcrayons.Alfred-2.accessibility_api'
end

dep 'alfred.cask'
dep 'com.runningwithcrayons.Alfred-2.accessibility_api'

# TODO start the application and list what must be done in the settings
# * start at login
# * shortcut
# * enable clipboard history
