dep 'iTerm2' do
  requires 'iterm2-beta.cask',
           'iterm2.shell_config_ext'
end

dep 'iterm2-beta.cask' do
  installs 'homebrew/cask-versions/iterm2-beta'
end

dep 'iterm2.shell_config_ext' do
  content <<-EOF.unindent
      [ -f ~/.iterm2_shell_integration.zsh ] && source ~/.iterm2_shell_integration.zsh
    EOF
end
