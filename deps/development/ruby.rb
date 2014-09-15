DEFAULT_RUBY_VERSION = '1.9.3'
CHRUBY_CONTENT_FOR_SHELL_PROFILE = %(
# Inserted by ruby dependency in Babushka
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh

chruby #{DEFAULT_RUBY_VERSION}
)

dep 'Setup Ruby environment' do
  requires 'chruby setup',
           'install bundler'.with(ruby_version: DEFAULT_RUBY_VERSION),
           'install bundler'.with(ruby_version: '2.1.2'),
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
          file.puts CHRUBY_CONTENT_FOR_SHELL_PROFILE
        }
    }
    end
  }
end

dep 'install bundler', :ruby_version do
  requires 'install ruby'.with(version: ruby_version)

  met? { files_exists_matching "~/.gem/ruby/#{ruby_version}/gems/bundler-*/bin/bundler" }
  meet {
    log_block "Installing bundler for Ruby v#{ruby_version}" do
      shell "source /usr/local/opt/chruby/share/chruby/chruby.sh && chruby #{ruby_version} && gem install bundler"
    end
  }
end

dep 'install ruby', :version do
  requires 'ruby-install.managed'

  met? { files_exists_matching "~/.rubies/ruby-#{version}*" }
  meet { log_shell "Installing ruby v#{version}", "ruby-install ruby #{version}"}
end

# Must use the lib template as chruby does not include any binaries, just an exported bash function
dep 'chruby.lib'

dep 'ruby-install.managed'

def shell_profile_files
  ['~/.bashrc'.p, '~/.zshrc'.p]
end

def files_exists_matching(path_expression)
  !path_expression.p.glob.empty?
end
