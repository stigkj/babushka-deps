dep 'VPN clients' do
  requires 'tunnelblick.cask',
           'appgate-sdp-client.managed'
end

# OpenVPN client
dep 'tunnelblick.cask'

# Easy and free VPN
dep 'tunnelbear.cask'

# A dead simple VPN with no setup, just a shared secret (see https://github.com/jedisct1/dsvpn#secret-key)
dep 'dsvpn.managed' do
  installs 'nnathan/dsvpn/dsvpn'
end

dep 'appgate-sdp-client.managed'
