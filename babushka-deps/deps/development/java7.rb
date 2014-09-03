dep 'Java 7' do
  requires {
    on :osx, 'java7.cask'
    on :ubuntu, 'oracle-java7-installer.managed'
    otherwise { unsupported_platform! }
  }
end

dep 'java7.cask', :for => :osx do
  requires 'homebrew tap for caskroom versions'
end

dep 'oracle-java7-installer.managed', :for => :apt do
  requires_when_unmet {
    on :apt, 'ppa'.with('ppa:webupd8team/java'), 'oracle-installer-automated'
  }
  provides 'java'
end

dep 'oracle-installer-automated', :for => :apt do
  meet { shell('echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections') }
end
