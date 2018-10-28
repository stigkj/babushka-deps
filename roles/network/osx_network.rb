dep 'OS X network', :for => :osx do
  requires 'Junos Pulse',
           'Browsers',
           'Mail client',
           'ngrok.cask',
           'slack.cask'
end
