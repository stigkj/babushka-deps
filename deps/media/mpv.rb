# Media player like MPlayer
dep 'mpv' do
  requires {
    on :osx, 'mpv.cask'
    # TODO setup for Linux too
    otherwise { unsupported_platform! }
  }
end

dep 'mpv.cask', :for => :osx
