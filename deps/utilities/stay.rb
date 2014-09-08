dep 'Stay' do
  requires {
    on :osx, 'stay.cask'
    otherwise { unsupported_platform! }
  }
end

dep 'stay.cask', :for => :osx
