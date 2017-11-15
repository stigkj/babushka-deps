dep 'IntelliJ IDEA' do
  requires {
    on :osx, 'intellij-idea.cask'
    otherwise { unsupported_platform! }
  }
end

dep 'intellij-idea.cask', :for => :osx
