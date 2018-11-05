# Installs a Python pip
meta :pip do
  accepts_value_for :provides, :basename

  template do
    requires 'python.asdf'

    met? { in_path? provides }
    meet {
      log_shell "Installing #{basename}",
                "pip install #{basename}"
      log_shell "Putting #{basename} in $PATH",
                'asdf reshim python'
    }
  end
end

dep 'python.asdf' do
  requires 'readline',
           'xz.managed'

  version '2.7.15'
end
dep 'readline' do
  met? { readline_install_dir.exists? }
  meet {
    log_shell 'Installing readline',
              'brew install readline'
  }
  def readline_install_dir
    '/usr/local/opt/readline/lib'.p
  end
end
dep 'xz.managed'
