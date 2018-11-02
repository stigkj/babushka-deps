# Appends config for an application to zsh profile file
meta :shell_config do
  accepts_list_for :must_include
  accepts_value_for :content_to_append
  accepts_value_for :application, :basename

  template {
    met? {
      zsh_profile.exists? &&
        must_include.all? { |to_include|
          zsh_profile.read.include? to_include
        }
    }
    meet {
      log_block "Appends #{application} config to zsh profile file '~/.zshrc'" do
        zsh_profile.append "\n#{content_to_append}"
      end
    }
  }

  def zsh_profile
    '~/.zshrc'.p
  end
end

