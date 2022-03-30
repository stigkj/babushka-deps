# Installs the specified version of the given tool through asdf version manager (https://github.com/asdf-vm/asdf).
meta :asdf do
  accepts_value_for :installs, :basename
  accepts_value_for :version

  template do
    requires 'asdf installer',
             'asdf.shell_config_ext'

    met? {
      shell("asdf list #{installs} || echo not_installed").include? version
    }
    meet {
      log_shell "Installing #{installs} #{version}",
                "asdf plugin-add #{installs}; asdf install #{installs} #{version}; asdf global #{installs} #{version}"
    }
  end
end

dep 'asdf installer' do
  met? { asdf_home.exists? }
  meet {
    log_block 'Installing asdf into ~/.asdf' do
      shell("git clone https://github.com/asdf-vm/asdf #{asdf_home} --branch v0.9.0")
    end
  }

  def asdf_home
    "#{ENV['HOME']}/.asdf".p
  end
end

dep 'asdf.shell_config_ext' do
  content <<-EOF.unindent
      asdf_dir=~/.asdf

      zplug "kiurchv/asdf.plugin.zsh", defer:2
    EOF
end
