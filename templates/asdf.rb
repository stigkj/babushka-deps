# Installs the specified version of the given tool through asdf version manager (https://github.com/asdf-vm/asdf).
meta :asdf do
  accepts_value_for :installs, :basename
  accepts_value_for :version

  template do
    requires 'asdf.managed'

    met? {
      shell("asdf list #{installs} || echo not_installed").include? version
    }
    meet {
      log_shell "Installing #{installs} #{version}",
                "asdf plugin-add #{installs}; asdf install #{installs} #{version}; asdf global #{installs} #{version}"
    }
  end
end

dep 'asdf.managed'
