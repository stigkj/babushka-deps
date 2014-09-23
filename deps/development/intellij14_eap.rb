dep 'IntelliJ IDEA 14 EAP' do
  requires 'caskroom versions'
  requires {
    on :osx, 'intellij-idea-ultimate-eap.cask'
    otherwise { unsupported_platform! }
  }
end

dep 'intellij-idea-ultimate-eap.cask', :for => :osx
