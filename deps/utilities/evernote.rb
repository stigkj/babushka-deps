dep 'Evernote' do
  requires {
    on :osx, 'evernote.cask'
    # TODO setup for Linux too
    otherwise { unsupported_platform! }
  }
end

dep 'evernote.cask', :for => :osx
