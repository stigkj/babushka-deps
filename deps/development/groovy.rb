dep 'Groovy' do
  requires 'java.managed',
           'groovy.managed'
end

# Homebrew needs to have java installed before it can install groovy
# TODO create a asdf plugin instead
dep 'java.managed'
dep 'groovy.managed'
