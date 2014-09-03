dep 'Sublime Text' do
  requires {
    on :osx, 'sublime-text3.cask'
    # TODO setup for Linux too
    otherwise { unsupported_platform! }
  }
end

dep 'sublime-text3.cask', :for => :osx do
  requires 'homebrew tap for caskroom/versions'
end

