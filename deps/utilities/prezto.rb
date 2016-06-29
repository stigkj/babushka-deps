# zsh extension framework, ala oh-my-zsh
dep 'prezto' do
  requires 'zsh.managed',
           'downloaded from github',
           'config ok'
end

dep 'downloaded from github' do
  met? { prezto_home.exists? }
  meet {
    log_block 'Download prezto from GitHub' do
      shell "git clone --recursive https://github.com/sorin-ionescu/prezto.git #{prezto_home}"
    end
  }

  def prezto_home
    (ENV['ZDOTDIR'] || ENV['HOME']) / '.zprezto'
  end
end

dep 'config ok' do
  met? { config_ok }
  meet {
    config_files.each { |file|
      homedir_file = homedir_file_of(file)

      if !homedir_file.exists?
        log_block "Copying #{file} into home directory" do
          file.cp homedir_file
        end
      end
    }
  }

  def config_ok
    included_in_zshrc && config_files_present
  end

  def included_in_zshrc
    (ENV['HOME'] / '.zshrc').read.include? '.zprezto/init.zsh'
  end

  def config_files_present
    config_files.all? { |file| homedir_file_of(file).exists? }
  end

  def config_files
    "#{ENV['HOME']}/.zprezto/runcoms".p.glob('z*').collect {|file| file.p }
  end

  def homedir_file_of(file)
    "~/.#{file.basename}".p
  end
end
