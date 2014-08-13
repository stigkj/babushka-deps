dep 'htop.bin' do
  installs {
    via :brew, 'htop-osx.cask'
    via :apt, 'htop.managed'
  }
end