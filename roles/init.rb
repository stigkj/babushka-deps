# These dependencies must be installed and initialized before installing anything else
dep 'init' do
  requires 'Dropbox',
           'mackup',
           'Setup ssh',
           'Convert HD to case-sensitive format'
end
