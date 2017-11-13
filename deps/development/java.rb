dep 'Java' do
  requires {
    on :osx, 'java.cask, java8.cask'
    otherwise { unsupported_platform! }
  }
end

dep 'java.cask', :for => :osx

dep 'java8.cask', :for => :osx do
  requires 'caskroom versions'
end
