dep 'Junos Pulse' do
  requires 'JunosPulse.installer',
           'Create VPN check file'
end

dep 'JunosPulse.installer', :for => :osx do
  source "file://#{ENV['HOME']}/Dropbox/JunosPulse313.dmg"
  met? {
    '/Applications/Junos Pulse.app'.p.exist?
  }
end

dep 'Create VPN check file' do
  met? { File.exists? vpn_check_file }
  meet {
    log_block 'Creating VPN check file' do
      shell "mkdir -p #{vpn_check_file.parent}", :sudo => true
      shell "cp #{ENV['HOME']}/Dropbox/mac #{vpn_check_file}", :sudo => true
      shell "chown #{ENV['USER']} #{vpn_check_file}", :sudo => true
    end
  }

  def vpn_check_file
    '/private/etc/aft/mac.check'.p
  end
end
