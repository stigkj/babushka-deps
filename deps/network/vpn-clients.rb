dep 'VPN clients' do
  requires 'tunnelblick.cask',
           'Pulse Secure'
end

# OpenVPN client
dep 'tunnelblick.cask'

# Easy and free VPN
dep 'tunnelbear.cask'

# A dead simple VPN with no setup, just a shared secret (see https://github.com/jedisct1/dsvpn#secret-key)
dep 'DSVPN' do
  requires 'homebrew tap'.with('nnathan/dsvpn'),
           'dsvpn.managed'
end
dep 'dsvpn.managed'

dep 'Pulse Secure' do
  requires 'PulseSecure.installer',
           'Create VPN check file'
end

dep 'PulseSecure.installer', :for => :osx do
  source "file://#{ENV['HOME']}/Dropbox/Software/ps-pulse-mac-5.2r5.0-b869-installer.dmg"
  met? {
    '/Applications/Pulse Secure.app'.p.exist?
  }
end

dep 'Create VPN check file' do
  met? { vpn_check_file.exist? }
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

