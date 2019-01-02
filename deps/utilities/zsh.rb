dep 'zsh' do
  requires 'zsh.managed',
           'zplug',
           #'zsh-autosuggestions.zplug_plugin',
           'zsh-syntax-highlighting.zplug_plugin'
end

dep 'zsh.managed'

# TODO look at recording all shell activity (with script?)
# https://unix.stackexchange.com/questions/25639/how-to-automatically-record-all-your-terminal-sessions-with-script-utility

# TODO look at this, Fish-like suggestions
dep 'zsh-autosuggestions.managed'

# Syntax hightlighting of shell commands in zsh
dep 'zsh-syntax-highlighting.zplug_plugin' do
  name 'zdharma/fast-syntax-highlighting'
end

# TODO might change to these as plugin managers later
dep 'zgen.managed'
dep 'zplugin.managed'

# TODO look at these plugins too
dep 'zaw.managed' # https://github.com/zsh-users/zaw
dep 'fz.managed'  # https://github.com/changyuheng/fz

# TODO https://github.com/djui/alias-tips
