dep '1Password' do
  requires {
    on :osx, '1password.cask'
    otherwise { unsupported_platform! }
  }
end

dep '1password.cask', :for => :osx do
  after {
    Process.spawn "open /Applications/1Password*.app"
  }
end
