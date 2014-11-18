dep 'Fix hostname-through-DHCP bug', :for => :osx do
  username = ENV['USER']
  hostname = "#{username}.finn.no"

  met? {
    File.readlines("/etc/hosts").grep(/#{hostname}/).any?
  }

  meet {
    log_block 'Fixing hostname-through-DHCP bug' do
      shell "echo '127.0.0.1 #{hostname}' >> /etc/hosts", :sudo => true
      shell "scutil --set HostName #{username}", :sudo => true
    end
  }
end
