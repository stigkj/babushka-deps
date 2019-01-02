user_name = 'stiklepp'
home_dir = "/Users/#{user_name}".p

dep 'Init machine for real user' do
  requires 'Create home dir',
           'Init APFS volume for user',
           'Create user',
           'Switch to real user to continue'
end

dep 'Create home dir' do
  met? { home_dir.exists? }
  meet {
    log_shell 'Creating home directory',
              "mkdir #{home_dir}", :sudo => true
  }
end

dep 'Init APFS volume for user' do
  met? {
    shell('diskutil list').include? "APFS Volume #{user_name}"
  }
  meet {
    log_shell "Init APFS volume for #{user_name}",
              "diskutil apfs addVolume disk1 'Case-sensitive APFS' #{user_name} -mountpoint /Users/#{user_name} -passprompt", :sudo => true
  }
end

dep 'Create user' do
  met? {
    shell('dscl . list /Users').include? user_name
  }
  meet {
    log_block "Creating user #{user_name}" do
      password = Babushka::Prompt.get_value("the password", {})
      shell("sysadminctl -addUser #{user_name} -fullName 'Stig Kleppe-Jørgensen' -password #{password} -home /Users/#{user_name} -admin", :sudo => true)
    end
  }
end

dep 'Switch to real user to continue' do
  met? {
    shell('whoami') == user_name
  }
  meet {
    confirm("Switch to user #{user_name} and start babushka again", :default => 'y')
  }
end
