dep 'Narrative Uploader' do
  requires {
    on :osx, 'narrative-uploader.cask'
    # TODO setup for Linux too
    otherwise { unsupported_platform! }
  }
end

dep 'narrative-uploader.cask', :for => :osx do
  requires '1password.cask'
  requires_when_unmet
    'spawn OS X app'.
      with('/opt/homebrew-cask/Caskroom/narrative-uploader/latest/Narrative Uploader.app')
end
