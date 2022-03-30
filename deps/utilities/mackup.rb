dep 'mackup' do
  requires 'Telia Sky',
           'homebrew',
           'mackup.managed',
           'Mackup restore must run before continuing'
end

dep 'mackup.managed'

dep 'Mackup restore must run before continuing' do
  met? { '~/.git_global'.p.symlink? }
  meet {
    confirm('Run mackup restore now in another shell before pressing enter', :default => 'y')
  }
end
