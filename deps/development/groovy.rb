dep 'Groovy' do
  requires 'groovy.asdf'
end

dep 'groovy.asdf' do
  installs 'groovy'
  version '3.0.9'
end

