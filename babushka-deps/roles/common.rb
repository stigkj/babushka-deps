dep 'common' do
  # These 2 must be installed and initialized before installing anything else
  requires 'Dropbox', 'mackup'
  requires 'common development', 'common media', 'common network', 'common utilities'
end