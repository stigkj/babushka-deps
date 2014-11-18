dep 'Set computer name', :for => :osx do
  computername = ENV['USER']

  met? {
    shell('scutil --get ComputerName') == computername
  }

  meet {
    log_shell "Setting computer name to #{computername}", "scutil --set ComputerName #{computername}", :sudo => true
  }
end
