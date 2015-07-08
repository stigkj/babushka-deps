# Creates a VPN using ssh tunneling
dep 'sshuttle.managed' do
  requires 'homebrew head-only'

  meet {
    log_shell 'Installing HEAD version of sshuttle', 'brew install --HEAD sshuttle'
  }
end
