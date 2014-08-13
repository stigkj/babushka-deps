dep 'IntelliJ IDEA 13' do
  requires {
    on :osx, 'intellij-idea.cask'
    otherwise { unsupported_platform! }
  }
end

dep 'intellij-idea.cask', :for => :osx