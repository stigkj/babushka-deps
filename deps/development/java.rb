dep 'Java' do
  requires 'java.managed',
           'java8.asdf',
           'java11.asdf',
           'java17.asdf'
end

# OS X needs a regularly installed jdk also
dep 'java.managed' do
  # Cannot use the regular brew info check
  met? { '/Library/Java/JavaVirtualMachines/openjdk.jdk'.p.exists? }

  after {
    log_shell 'Initiating system Java wrappers',
              'ln -sfn /opt/homebrew/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk', :sudo => true
  }
end

dep 'java8.asdf' do
  installs 'java'
  version 'liberica-8u322+6'
end

dep 'java11.asdf' do
  installs 'java'
  version 'liberica-11.0.14.1+1'
end

dep 'java17.asdf' do
  installs 'java'
  version 'liberica-17.0.2+9'
end
