dep '1Password' do
  requires {
    on :osx, 'onepassword.cask'
    otherwise { unsupported_platform! }
  }
  requires_when_unmet 'spawn OS X app'.with('/opt/homebrew-cask/Caskroom/onepassword/5.0.2/1Password 5.app')
end

dep 'onepassword.cask', :for => :osx
