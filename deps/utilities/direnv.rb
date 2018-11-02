# Environment switcher for the shell
# TODO look at smartcd too
dep 'direnv' do
  requires 'direnv.managed',
           'direnv.shell_config_ext'
end

dep 'direnv.managed'

dep 'direnv.shell_config_ext' do
  content <<-EOF.unindent
      eval "$(direnv hook zsh)"
    EOF
end

