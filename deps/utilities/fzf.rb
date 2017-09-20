# A very fast command-line fuzzy finder
# TODO look at other alternatives: fzy, peco, zaw
# look at
# https://github.com/AshyIsMe/fzfOS
# https://github.com/ggVGc/fzf_browser
# https://github.com/jamesmclendon/fzfplay
# https://github.com/b4b4r07/cli-finder
# https://github.com/kghoon/oh-my-fzf
# https://github.com/Perlence/dockerfzf
# https://github.com/rcruzper/dps
# https://github.com/hikouki/docin
# https://gist.github.com/chaudum/baa1f4981f30733e12acc21379cf3151 (search history with CTRL-R)
dep 'fzf' do
  requires 'fzf.managed',
           'fzf.shell_config',
           'fzf config script'
end

dep 'fzf.managed'

dep 'fzf.shell_config' do
  must_include 'fzf.zsh'
  content_to_append fzf_shell_config
end

dep 'fzf config script' do
  met? {
    fzf_config_file.exists? && File.foreach(fzf_config_file).any?{ |line| line.include?(fzf_version) }
  }
  meet {
    render_erb "../../renderables/fzf_config.erb", :to => fzf_config_file
  }
end

def fzf_shell_config
  <<-EOF.unindent
    # Inserted by fzf dependency in Babushka
    [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
  EOF
end

def fzf_version
  `fzf --version`.strip
end

def fzf_config_file
  "#{ENV['HOME']}/.fzf.zsh".p
end
