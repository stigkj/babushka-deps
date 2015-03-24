dep 'IntelliJ IDEA' do
  requires {
    on :osx, 'intellij-idea.cask'
    otherwise { unsupported_platform! }
  }
end

# TODO change memory configuration in plist
# TODO add 'idea.case.sensitive.fs=true' in IDEA_HOME/bin/idea.properties
dep 'intellij-idea.cask', :for => :osx
