dep 'beamer.bin' do
  installs {
    # Extend cask template to take installs and via like bin does
    via :mountain_lion, 'beamer.cask'
  }
end