dep 'htop.bin' do
  installs {
    via :brew, 'htop-osx.managed'
    via :apt, 'htop.managed'
  }
end
