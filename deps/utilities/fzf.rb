# A very fast command-line fuzzy finder
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
