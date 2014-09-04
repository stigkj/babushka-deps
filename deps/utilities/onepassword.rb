dep '1Password' do
  requires {
    on :osx, 'onepassword.cask'
    otherwise { unsupported_platform! }
  }
end

dep 'onepassword.cask', :for => :osx
