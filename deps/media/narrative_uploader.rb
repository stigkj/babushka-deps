dep 'Narrative Uploader' do
  requires {
    on :osx, 'narrative-uploader.cask'
    # TODO setup for Linux too
    otherwise { unsupported_platform! }
  }
end

dep 'narrative-uploader.cask', :for => :osx
