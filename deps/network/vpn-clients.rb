dep 'VPN clients' do
  requires 'Appgate SDP.installer'
end

dep 'Appgate SDP.installer' do
  source 'https://bin.appgate-sdp.com/5.5/client/Appgate-SDP-5.5.3-Installer.dmg'
  met? { '/Applications/AppGate SDP.app'.p.exists? }
end

# OpenVPN client
dep 'tunnelblick.cask'

# Easy and free VPN
dep 'tunnelbear.cask'

# A dead simple VPN with no setup, just a shared secret (see https://github.com/jedisct1/dsvpn#secret-key)
dep 'dsvpn.managed' do
  installs 'nnathan/dsvpn/dsvpn'
end