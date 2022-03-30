dep 'Sublime Text' do
  requires {
    on :osx, 'sublime-text.cask'
    # TODO setup for Linux too
    otherwise { unsupported_platform! }
  }
end

dep 'sublime-text.cask', :for => :osx

