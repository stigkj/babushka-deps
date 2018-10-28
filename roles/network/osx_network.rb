dep 'OS X network', :for => :osx do
  requires 'Junos Pulse',
           'Browsers',
           'mailplane.cask',
           'ngrok.cask',
           'slack.cask'
end
