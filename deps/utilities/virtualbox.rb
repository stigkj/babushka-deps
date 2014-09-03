dep 'VirtualBox' do
  requires {
    on :osx, 'virtualbox.cask'
    # TODO setup for Linux too
    otherwise { unsupported_platform! }
  }
end

dep 'virtualbox.cask', :for => :osx
