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
  requires 'readline.managed',
           'xz.managed'

  version '2.7.15'
end
dep 'readline.managed'
dep 'xz.managed'
