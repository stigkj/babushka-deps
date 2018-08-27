dep 'OS X network', :for => :osx do
  requires 'Junos Pulse',
           'mailplane.cask',
           'ngrok.cask',
           'slack.cask'
end
