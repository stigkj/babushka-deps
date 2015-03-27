dep 'mackup' do
  requires 'Dropbox',
           'Install mackup with easy_install',
           'Mackup restore must run before continuing'
end

dep 'Install mackup with easy_install' do
  met? { in_path? 'mackup' }
  meet { log_shell 'Installing mackup', 'easy_install mackup', :spinner => true, :sudo => true }
end

dep 'Mackup restore must run before continuing' do
  met? { '~/.git_global'.p.symlink? }
  meet { Babushka::Prompt.confirm('Run mackup restore now in another shell before pressing enter', :default => 'y') }
end
