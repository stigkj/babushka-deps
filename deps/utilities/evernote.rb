dep 'Evernote' do
  requires {
    on :osx, 'evernote.cask', 'Evernote extension.mas'
    # TODO setup for Linux too
    otherwise { unsupported_platform! }
  }
end

dep 'evernote.cask', :for => :osx

dep 'Evernote extension.mas' do
  id '1481669779' 
end
