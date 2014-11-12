dep 'IntelliJ IDEA 14 EAP' do
  requires 'caskroom versions'
  requires {
    on :osx, 'intellij-idea-eap.cask'
    otherwise { unsupported_platform! }
  }
end

# TODO change memory configuration in plist
dep 'intellij-idea-eap.cask', :for => :osx
