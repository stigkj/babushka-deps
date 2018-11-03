zplug_home = '~/.zplug'.p
zplug_local_dir = zplug_home / 'local'

# A nice plugin manager for zsh
dep 'zplug' do
  requires 'zsh.managed'
  requires 'zplug installer'
  requires 'zplug.shell_config'
end

dep 'zplug installer' do
  met? { zplug_home.exists? }
  meet {
    log_block 'Installing zplug' do
      git 'https://github.com/zplug/zplug', :to => zplug_home
    end
  }

end

dep 'zplug.shell_config' do
  requires 'zplug local dir'

  must_include zplug_home, zplug_local_dir
  content_to_append <<-EOF.unindent
      # Inserted by zplug dependency in Babushka
      source #{zplug_home}/init.zsh

      for file in #{zplug_local_dir}/*.zsh; do
        source "$file"
      done

      zplug load
    EOF
end

dep 'zplug local dir' do
  met? { zplug_local_dir.exists? }
  meet {
    log_block "Creating zplug local dir (#{zplug_local_dir})" do
      zplug_local_dir.mkdir
    end
  }
end
