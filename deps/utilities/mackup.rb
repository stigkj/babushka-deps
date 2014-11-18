dep 'mackup' do
  requires 'Dropbox',
           'mackup HEAD',
           'Mackup restore must run before continuing'
end

dep 'mackup HEAD' do
  requires 'binary.my_forked_homebrew'

  met? { Babushka::BrewHelper.has? 'mackup' }
  meet { log_shell 'Installing mackup', 'brew install mackup --HEAD' }
end

dep 'Mackup restore must run before continuing' do
  met? { '~/.git_global'.p.symlink? }
  meet { Babushka::Prompt.confirm('Run mackup restore now in another shell before pressing enter', :default => 'y') }
end
