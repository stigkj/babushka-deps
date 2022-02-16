# These dependencies must be installed and initialized before installing anything else
dep 'init' do
  requires 'Check HD is in case-sensitive encrypted APFS format',
           'Init machine for real user',
           'Telia Sky',
           'mackup',
           'Setup ssh'
end
