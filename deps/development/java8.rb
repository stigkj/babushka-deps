# TODO install Java versions through something like this:
# requires 'Java'.with(:version => 8)
dep 'Java 8' do
  requires {
    on :osx, 'java.cask'
    on :ubuntu, 'oracle-java8-installer.managed'
    otherwise { unsupported_platform! }
  }
end

dep 'java.cask', :for => :osx

dep 'oracle-java8-installer.managed', :for => :apt do
  requires_when_unmet {
    on :apt, 'ppa'.with('ppa:webupd8team/java'), 'oracle-installer-automated'
  }
  provides 'java'
end

dep 'oracle-installer-automated', :for => :apt do
  meet { shell 'echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections' }
end
