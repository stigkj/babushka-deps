dep 'Tomahawk' do
  requires {
    on :osx, 'tomahawk.cask'
    # TODO setup for Linux too
    otherwise { unsupported_platform! }
  }
end

dep 'tomahawk.cask', :for => :osx
