# TODO look at
# https://github.com/gicmo/dot-zsh/blob/master/plugins/iterm2.zplug
dep 'iTerm2' do
  requires 'iterm2-nightly.cask',
           'iterm2.shell_config_ext'
end

dep 'iterm2-nightly.cask'

dep 'iterm2.shell_config_ext' do
  content <<-EOF.unindent
      [ -f ~/.iterm2_shell_integration.zsh ] && source ~/.iterm2_shell_integration.zsh
    EOF
end
