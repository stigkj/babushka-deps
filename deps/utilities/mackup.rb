dep 'mackup' do
  requires 'Dropbox',
           'mackup HEAD',
           'Mackup restore must run before continuing'
end

dep 'mackup HEAD' do
  requires 'Setup ssh config from Dropbox-Mackup'
  requires 'binary.my_forked_homebrew'

  met? { Babushka::BrewHelper.has? 'mackup' }
  meet { log_shell 'Installing mackup', 'brew install mackup --HEAD' }
end

dep 'Setup ssh config from Dropbox-Mackup' do
  met? { '~/.ssh'.p.symlink? }
  meet { 
    log_block 'Setting up ssh config' do
      shell 'ln -nsf ~/Dropbox/Mackup/.ssh ~/.ssh && chmod 700 ~/.ssh && chmod 600 ~/.ssh/*'
    end
  }
end

dep 'Mackup restore must run before continuing' do
  met? { '~/.git_global'.p.symlink? }
  meet { Babushka::Prompt.confirm('Run mackup restore now in another shell before pressing enter', :default => 'y') }
end
