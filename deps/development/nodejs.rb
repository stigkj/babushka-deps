dep 'Node.js' do
  requires 'nodejs.asdf',
           'yarn.asdf'
end

dep 'nodejs.asdf' do
  requires 'coreutils.managed',
           'gnupg.managed'

  version '17.8.0'
end
dep 'coreutils.managed' do
  provides 'gcat'
end
dep 'gnupg.managed' do
  provides 'gpg'
end

dep 'yarn.asdf' do
  version '1.22.18'
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
