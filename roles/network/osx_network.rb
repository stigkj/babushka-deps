dep 'OS X network', :for => :osx do
  requires 'Junos Pulse',
           'mailplane.cask',
           'slack.cask'
end
