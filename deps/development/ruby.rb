DEFAULT_RUBY_VERSION = '1.9.3'
DEFAULT_RUBY_VERSION_WITH_PATCH_LEVEL = "#{DEFAULT_RUBY_VERSION}p545"
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
           'shell must be reloaded to start with correct ruby environment if needed'
end

dep 'chruby setup' do
  requires 'chruby.lib'

  met? {
    Babushka::FileDefs.shell_profile_files.all? { |pathname|
      pathname.exists? &&
      pathname.read.include?('chruby.sh') &&
      pathname.read.include?('auto.sh') &&
      pathname.read.include?(DEFAULT_RUBY_VERSION)
    }
  }
  meet {
    log_block "Install chruby into shell profile files ['~/.bashrc', '~/.zshrc']" do
      Babushka::FileDefs.shell_profile_files.each { |pathname|
        pathname.open(mode: 'a') { |file|
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

dep 'shell must be reloaded to start with correct ruby environment if needed' do
  met? {
    in_path?("ruby ~> #{DEFAULT_RUBY_VERSION_WITH_PATCH_LEVEL}") && ruby_path.include?('~/.rubies'.p).tap { |result|
      unmeetable! "Must reload shell to get the correct ruby in path (now: #{ruby_path})" unless result
    }
  }
end

def files_exists_matching(path_expression)
  !path_expression.p.glob.empty?
end

def ruby_path
  shell! 'which ruby'
end
