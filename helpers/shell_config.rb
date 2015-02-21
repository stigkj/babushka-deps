meta :shell_config do
  accepts_list_for :must_include
  accepts_value_for :content_to_append
  accepts_value_for :application, :basename

  template {
    met? {
      shell_profile_files.all? { |pathname|
        pathname.exists? &&
        must_include.all? { |to_include|
          pathname.read.include?(to_include)
        }
      }
    }
    meet {
      log_block "Install #{application} into shell profile files ['~/.bashrc', '~/.zshrc']" do
        shell_profile_files.each { |path|
          path.append content_to_append
        }
      end
    }
  }

  def shell_profile_files
    ['~/.bashrc'.p, '~/.zshrc'.p]
  end
end

