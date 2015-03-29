dep 'htop' do
  requires {
    on :brew, 'htop-osx.managed'
    on :apt, 'htop.managed'
  }
end

dep 'htop-osx.managed', :for => :osx do
  provides 'htop'
end
