# Installs a Python pip
meta :pip do
  template do
    requires 'python.asdf'

    met? { in_path? basename }
    meet {
      log_shell "Installing #{basename}",
                "pip install #{basename}"
      log_shell "Putting #{basename} in $PATH",
                'asdf reshim python'
    }
  end
end

dep 'python.asdf' do
  version '2.7.15'
end
