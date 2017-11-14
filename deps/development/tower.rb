dep 'Tower' do
  requires {
    on :osx, 'tower.cask'
    otherwise { unsupported_platform! }
  }
end

dep 'tower.cask', :for => :osx
