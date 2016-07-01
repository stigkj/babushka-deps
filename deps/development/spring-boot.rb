# cli for working with spring boot apps
dep 'springboot' do
  requires 'homebrew tap'.with('pivotal/tap')
  requires 'springboot.managed'
end

dep 'springboot.managed'
