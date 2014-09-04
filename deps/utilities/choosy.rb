dep 'Choosy' do
  requires {
    on :osx, 'choosy.cask'
    otherwise { unsupported_platform! }
  }
end

dep 'choosy.cask', :for => :osx
