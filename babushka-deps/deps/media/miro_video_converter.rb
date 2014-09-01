dep 'Miro Video Converter' do
  requires {
    on :osx, 'miro-video-converter.cask'
    # TODO setup for Linux too
    otherwise { unsupported_platform! }
  }
end

dep 'miro-video-converter.cask', :for => :osx
