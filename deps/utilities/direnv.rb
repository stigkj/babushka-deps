# Environment switcher for the shell
# TODO look at smartcd too
dep 'direnv' do
  requires 'direnv.managed',
           'direnv.shell_config'
end

dep 'direnv.managed'

dep 'direnv.shell_config' do
  must_include 'direnv'
  content_to_append direnv_shell_config
end

def direnv_shell_config
  <<-EOF.unindent
    # Inserted by direnv dependency in Babushka
    eval "$(direnv hook zsh)"
  EOF
end

