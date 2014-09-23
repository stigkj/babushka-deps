dep 'Vagrant' do
  requires {
    on :osx, 'vagrant.cask'
    # TODO setup for Linux too
    otherwise { unsupported_platform! }
  }
end

dep 'vagrant.cask', :for => :osx
