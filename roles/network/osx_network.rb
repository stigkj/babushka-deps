dep 'OS X network', :for => :osx do
  requires 'Junos Pulse',
           'mailplane.cask',
           'ngrok.cask',
           'google-cloud-sdk.cask',
           'slack.cask'
end
