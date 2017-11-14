dep 'Light Table' do
  requires {
    on :osx, 'lighttable.cask'
    # TODO setup for Linux too
    otherwise { unsupported_platform! }
  }
end

dep 'lighttable.cask', :for => :osx
