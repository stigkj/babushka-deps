dep 'Fix hostname-through-DHCP bug', :for => :osx do
  hostname = "#{ENV['USER']}.finn.no"

  met? {
    File.readlines("/etc/hosts").grep(/#{hostname}/).any?
  }

  meet {
    shell("echo '127.0.0.1 #{hostname}' >> /etc/hosts", :sudo => true)
    shell("scutil --set HostName #{hostname}", :sudo => true)
  }
end