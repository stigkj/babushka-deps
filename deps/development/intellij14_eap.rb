dep 'IntelliJ IDEA 14 EAP' do
  requires 'caskroom versions'
  requires {
    on :osx, 'intellij-idea-ultimate-eap.cask'
    otherwise { unsupported_platform! }
  }
end

# TODO change memory configuration in plist
dep 'intellij-idea-ultimate-eap.cask', :for => :osx
