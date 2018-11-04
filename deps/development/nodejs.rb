dep 'Node.js' do
  requires 'nodejs.asdf',
           'yarn.binary'
end

dep 'nodejs.asdf' do
  requires 'coreutils.managed',
           'gpg.managed'

  version '9.11.2'
end
dep 'coreutils.managed'
dep 'gpg.managed'

dep 'yarn.binary' do
  requires 'nodejs.asdf'

  met? { in_path? 'yarn' }
  meet {
    log_shell 'Installing yarn without nodejs',
              'brew install yarn --without-node'
  }
end

# TODO Cannot be done like this anymore as node is now installed through asdf. Disable for now.
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
