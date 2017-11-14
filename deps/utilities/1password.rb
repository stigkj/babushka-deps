dep '1Password' do
  requires {
    on :osx, '1password.cask'
    otherwise { unsupported_platform! }
  }
end

# TODO install license automatically?
# It is located in ~/Dropbox/Software/Licences/

dep '1password.cask', :for => :osx do
  after {
    Process.spawn "open /Applications/1Password*.app"
  }
end
