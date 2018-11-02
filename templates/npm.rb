# Installs a Node tool
meta :npm do
  accepts_value_for :provides, :basename

  template do
    requires 'nodejs.asdf'

    met? { in_path? provides }
    meet {
      log_shell "Installing #{basename}",
                "npm install -g #{basename}"
    }
  end
end
