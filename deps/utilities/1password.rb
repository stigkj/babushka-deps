dep '1Password' do
  requires {
    on :osx, '1password.cask'
    otherwise { unsupported_platform! }
  }
  requires_when_unmet 'spawn OS X app'.with('/opt/homebrew-cask/Caskroom/1password/*/1Password 5.app')
end

dep '1password.cask', :for => :osx
