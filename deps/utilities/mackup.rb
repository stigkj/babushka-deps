dep 'mackup' do
  requires 'Telia Sky',
           'Install mackup with easy_install',
           'Create the XDG .config directory',
           'Mackup restore must run before continuing'
end

dep 'Install mackup with easy_install' do
  met? { in_path? 'mackup' }
  meet {
    log_shell 'Installing mackup', 'easy_install mackup', :spinner => true, :sudo => true
  }
end

# v0.9.2 of mackup needs the XDG config directory to be present before restore
dep 'Create the XDG .config directory' do
  met? { xdg_config_directory.exists? }
  meet {
    log_block "Creating #{xdg_config_directory}" do
      xdg_config_directory.mkdir
    end
  }

  def xdg_config_directory
    '~/.config'.p
  end
end

dep 'Mackup restore must run before continuing' do
  met? { '~/.git_global'.p.symlink? }
  meet {
    confirm('Run mackup restore now in another shell before pressing enter', :default => 'y')
  }
end
