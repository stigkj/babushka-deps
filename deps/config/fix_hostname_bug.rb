dep 'Fix hostname-through-DHCP bug', :for => :osx do
  requires 'Set host name',
           'Set local host name',
           'Set computer name'
end

dep 'Set host name', :for => :osx do
  hostname = "local.finn.no"

  met? {
    File.readlines("/etc/hosts").grep(/#{hostname}/).any?
  }

  meet {
    log_block "Setting hostname to #{hostname}" do
      shell "echo '127.0.0.1 #{hostname}' >> /etc/hosts", :sudo => true
      shell "scutil --set HostName #{hostname}", :sudo => true
    end
  }
end

dep 'Set local host name', :for => :osx do
  hostname = 'local'

  met? {
    shell('scutil --get LocalHostName') == hostname
  }

  meet {
    log_shell "Setting local host name to #{hostname}", "scutil --set LocalHostName #{hostname}", :sudo => true
  }
end

dep 'Set computer name', :for => :osx do
  computername = ENV['USER']

  met? {
    shell('scutil --get ComputerName') == computername
  }

  meet {
    log_shell "Setting computer name to #{computername}", "scutil --set ComputerName #{computername}", :sudo => true
  }
end
