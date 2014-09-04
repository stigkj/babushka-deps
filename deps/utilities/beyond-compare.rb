dep 'Beyond Compare' do
  requires {
    on :osx, 'beyond-compare.cask'
    # TODO setup for Linux too
    otherwise { unsupported_platform! }
  }
end

dep 'beyond-compare.cask', :for => :osx
