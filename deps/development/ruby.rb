dep 'ruby' do
  requires 'chruby setup', 'ruby-install.managed'
end

dep 'chruby setup' do
  requires 'chruby.lib'

  met? {
    shell_profile_files.all? { |pathname|
      pathname.exists? && pathname.read.include?('chruby.sh')
    }
  }
  meet {
    log_block "Install chruby into shell profile files ['~/.bashrc', '~/.zshrc']" do
      shell_profile_files.each { |pathname|
        pathname.open(mode: 'w') { |file|
          file.puts ''
          file.puts '# Inserted by ruby dependency in Babushka'
          file.puts 'source /usr/local/opt/chruby/share/chruby/chruby.sh'
          file.puts 'source /usr/local/opt/chruby/share/chruby/auto.sh'
        }
    }
    end
  }
end

# Must use the lib template as chruby does not include any binaries, just an exported bash function
dep 'chruby.lib'

dep 'ruby-install.managed'

def shell_profile_files
  ['~/.bashrc'.p, '~/.zshrc'.p]
end
