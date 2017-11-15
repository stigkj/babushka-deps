dep 'IntelliJ IDEA newest' do
  requires 'homebrew tap'.with('stigkj/personal')
  requires {
    on :osx, 'intellij-idea-newest.cask'
    otherwise { unsupported_platform! }
  }
end

dep 'intellij-idea-newest.cask', :for => :osx
