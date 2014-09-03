dep 'Adobe Flash Player' do
  requires {
    on :osx, 'flash.cask'
    # TODO setup for Linux too
    otherwise { unsupported_platform! }
  }
end

dep 'flash.cask', :for => :osx
