# Browser plugin for streaming media
# TODO fix install
dep 'Silverlight' do
  requires {
    on :osx, 'silverlight.cask'
    # TODO setup for Linux too
    otherwise { unsupported_platform! }
  }
end

dep 'silverlight.cask', :for => :osx
