# cli for working with spring boot apps
dep 'springboot' do
  requires 'springboot.managed'
end

dep 'springboot.managed' do
  installs 'pivotal/tap/springboot'
end
