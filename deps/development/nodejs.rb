dep 'Node.js' do
  requires 'node.managed',
           'yarn',
           'link node binaries into system path to work from GUI apps'
end

dep 'node.managed'

dep 'yarn' do
  requires 'yarn.managed',
           'yarn.shell_config'
end

dep 'yarn.managed'
dep 'yarn.shell_config' do
  must_include yarn_deps_bin_path
  content_to_append yarn_shell_config
end

def yarn_shell_config
  <<-EOF.unindent
    # Inserted by yarn dependency in Babushka
    export PATH=$PATH:#{yarn_deps_bin_path}
  EOF
end

def yarn_deps_bin_path
  '~/.config/yarn/global/node_modules/.bin'.p
end

# This is needed as PATH is not set properly in GUI apps, only a few of them, like /usr/bin
dep 'link node binaries into system path to work from GUI apps' do
  met? { binaries.all? { |binary| "#{bin_path}/#{binary}".p.exists? } }
  meet {
    log_block "Linking Node command line utilities #{binaries} into #{bin_path}" do
      binaries.each { |binary|
        shell %Q{ln -sf "#{path_to_binaries}/#{binary}" "#{bin_path}/#{binary}"}, :sudo => true
      }
    end
  }

  def binaries
    %w[node npm yarn]
  end

  def bin_path
    '/usr/bin'.p
  end

  def path_to_binaries
    '/usr/local/bin'.p
  end
end
