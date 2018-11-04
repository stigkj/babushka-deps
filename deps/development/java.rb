dep 'Java' do
  requires 'java.cask',
           'java8.asdf',
           'java10.asdf',
           'java11.asdf'
end

# OS X needs a regularly installed jdk also
dep 'java.cask'

dep 'java8.asdf' do
  installs 'java'
  version '8'
end

dep 'java10.asdf' do
  installs 'java'
  version '10'
end

dep 'java11.asdf' do
  installs 'java'
  version '11'
end
