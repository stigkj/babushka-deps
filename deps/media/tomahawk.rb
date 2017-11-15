# Plays music from a lot of sources, like Spotify, Google Play, Tidal, etc.
# https://www.tomahawk-player.org
dep 'Tomahawk' do
  requires {
    on :osx, 'tomahawk.installer'
    # TODO setup for Linux too
    otherwise { unsupported_platform! }
  }
end

dep 'tomahawk.installer', :for => :osx do
  source 'http://download.tomahawk-player.org/Tomahawk-0.8.4.dmg'
end
