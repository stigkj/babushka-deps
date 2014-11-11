# Media downloader for sites like Youtube, Vimeo, etc
dep '4K Video Downloader' do
  requires {
    on :osx, 'fourk-video-downloader.cask'
    # TODO setup for Linux too
    otherwise { unsupported_platform! }
  }
end

dep 'fourk-video-downloader.cask', :for => :osx
