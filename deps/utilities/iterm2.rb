dep 'iTerm2' do
  requires 'iterm2-nightly.cask',
           'iterm2.shell_config'
end

dep 'iterm2-nightly.cask', :for => :osx

dep 'iterm2.shell_config' do
  must_include '.iterm2_shell_integration.'
  content_to_append iterm2_shell_config
end

def iterm2_shell_config
  <<-EOF.unindent
    # Inserted by iTerm2 dependency in Babushka
    [ -f ~/.iterm2_shell_integration.`basename $SHELL` ] && source ~/.iterm2_shell_integration.`basename $SHELL`
  EOF
end
