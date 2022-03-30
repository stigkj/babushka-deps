# Appends zplug plugin to ~/.zplug/packages.zsh
meta :zplug_plugin do
  accepts_value_for :name
  accepts_value_for :tags
  accepts_value_for :application, :basename

  template {
    requires 'zplug'

    met? {
      packages_file.exists? && packages_file.read.include?(name)
    }
    meet {
      log_block "Install zplug plugin #{name} for #{application}" do
        packages_file.append plugin_config
      end
      #unmeetable! 'TODO fix this --> Must install plugin with zplug install'
    }
  }

  def packages_file
    '~/.zplug/packages.zsh'.p
  end

  def plugin_config
    extra = ''

    if tags
      extra = ", #{tags}"
    end

    <<-EOF.unindent
      zplug "#{name}"#{extra}
    EOF
  end
end
