dep 'Packer' do
  requires {
    on :osx, 'packer.cask'
    # TODO setup for Linux too
    otherwise { unsupported_platform! }
  }
end

dep 'packer.cask', :for => :osx
