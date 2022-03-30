# Creates zsh config file for an application in '~/.zplug/local' and set this up as a local zplug directory
meta :shell_config_ext do
  accepts_value_for :content
  accepts_value_for :application, :basename

  template {
    requires 'zplug'

    met? { local_file.exists? && local_file.read == content }
    meet {
      log_block "Creating zsh config file for #{application} (#{local_file})" do
        local_file.write content
      end
      #after { unmeetable! 'TODO fix this --> must load new zsh file by starting new shell' }
    }
  }

  def local_file
    "~/.zplug/local/#{application}.zsh".p
  end
end
