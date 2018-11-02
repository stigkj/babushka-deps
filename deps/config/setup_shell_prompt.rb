# TODO look at
# https://github.com/michaeldfallen/git-radar
dep 'Setup shell prompt' do
  requires 'pure.zplug_plugin'
end

# A really light weight but functional zsh prompt
dep 'pure.zplug_plugin' do
  requires 'zsh-async.zplug_plugin'

  name 'sindresorhus/pure'
  tags 'use:pure.zsh, as:theme'
end

dep 'zsh-async.zplug_plugin' do
  name 'mafredri/zsh-async'
end
