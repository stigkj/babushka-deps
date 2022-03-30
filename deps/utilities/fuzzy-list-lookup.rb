# TODO look at
# https://github.com/jlevy/the-art-of-command-line/issues/88"
# https://github.com/AshyIsMe/fzfOS
# https://github.com/ggVGc/fzf_browser
# https://github.com/jamesmclendon/fzfplay
# https://github.com/b4b4r07/cli-finder
# https://github.com/kghoon/oh-my-fzf
# https://github.com/Perlence/dockerfzf
# https://github.com/rcruzper/dps
# https://github.com/hikouki/docin
# https://gist.github.com/chaudum/baa1f4981f30733e12acc21379cf3151 (search history with CTRL-R)

# TODO let fzf show directory contents when ctrl-r
# TODO look at fzf wiki
dep 'Fuzzy list lookup' do
  requires 'fzf'
end

# A very fast command-line fuzzy finder
dep 'fzy.managed'

# A fast command-line fuzzy finder with a lot of features and integrations
dep 'fzf' do
  requires 'fzf.managed',
           'fzf.shell_config_ext'
end

dep 'fzf.managed'

dep 'fzf.shell_config_ext' do
  requires 'fd.managed',
           'highlight.managed'

  content <<-EOF.unindent
      export FZF_DEFAULT_COMMAND='fd --type f'
      export FZF_DEFAULT_OPTS="--layout=reverse --multi --border --tabstop 4 --preview '
               (highlight --validate-input -O ansi -l --replace-tabs 4 {} || cat {}) 2> /dev/null | head -500'"

      zplug "junegunn/fzf", use:"shell/*.zsh"
    EOF
end
