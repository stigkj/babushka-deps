dep 'IntelliJ IDEA EAP' do
  requires 'caskroom versions'
  requires {
    on :osx, 'intellij-idea-eap.cask'
    otherwise { unsupported_platform! }
  }
end

# TODO change memory configuration in plist
# TODO add 'idea.case.sensitive.fs=true' in IDEA_HOME/bin/idea.properties
dep 'intellij-idea-eap.cask', :for => :osx

#/opt/homebrew-cask/Caskroom/intellij-idea-eap/141.175.3/IntelliJ\ IDEA\ 14\ EAP.app/Contents/bin/idea.properties
