dep 'MPlayer' do
  requires {
    on :osx, 'mplayer-osx-extended.cask'
    # TODO setup for Linux too
    otherwise { unsupported_platform! }
  }
end

dep 'mplayer-osx-extended.cask', :for => :osx
