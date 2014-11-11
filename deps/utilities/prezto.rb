dep 'prezto' do
  requires 'zsh.managed'
    #requires use project template? see open tab
    #met?: spawn shell to see that prezto is installed
end

dep 'prezto.new2' do
  requires 'zsh.managed'

  path = ENV['HOME'] / '.zprezto'

  met? { File.exists? path }
  meet {
    git "git@github.com:sorin-ionescu/prezto.git", :to => path
    cd(path) { shell 'git submodule update --init --recursive' }
  }
end

# Clones (my fork of) the Prezto project from GitHub to ~/.zprezto
dep 'prezto.project' do
  url 'git@github.com:bradfeehan/prezto.git'
  path '~/.zprezto'
end

dep 'prezto.new', :argument do
  # requires 'xcode tools'
  met? { "~/.oh-my-zsh".p.exists? }
  meet do
    shell "git clone --recursive https://github.com/sorin-ionescu/prezto.git ~/.oh-my-zsh"
    Dir["#{ENV['HOME']}/.oh-my-zsh/runcoms/z{shenv,shrc,login,logout}"].each do |path|
      shell "cp -f #{path} #{ENV['HOME']}/.#{File.basename path}"
    end
    shell "chsh -s /bin/zsh"
    #shell "chmod ugo-x /usr/libexec/path_helper" if host.osx?
  end
end
