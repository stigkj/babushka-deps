dep 'Set local host name', :for => :osx do
  hostname = 'local'

  met? {
    shell('scutil --get LocalHostName') == hostname
  }

  meet {
    log_shell "Setting local host name to #{hostname}", "scutil --set LocalHostName #{hostname}", :sudo => true
  }
end
