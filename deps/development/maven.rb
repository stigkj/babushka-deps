dep 'Maven' do
  requires 'maven.managed'
end

dep 'maven.managed' do
  provides 'mvn'
end
