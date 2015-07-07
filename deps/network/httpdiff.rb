# Shows diff between 2 http requests
dep 'httpdiff.managed' do
  requires 'homebrew head-only'

  meet {
    log_shell 'Installing HEAD version of httpdiff', 'brew install --HEAD httpdiff'
  }
end
