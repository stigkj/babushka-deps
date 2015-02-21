dep 'IntelliJ IDEA 14' do
  requires 'caskroom versions'
  requires {
    on :osx, 'intellij-idea.cask'
    otherwise { unsupported_platform! }
  }
end

# TODO change memory configuration in plist
dep 'intellij-idea.cask', :for => :osx
