dep 'Sublime Text' do
  requires {
    on :osx, 'sublime-text-dev.cask'
    # TODO setup for Linux too
    otherwise { unsupported_platform! }
  }
end

dep 'sublime-text-dev.cask', :for => :osx

