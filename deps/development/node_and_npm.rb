dep 'node & npm' do
  requires 'node.managed',
           'link node & npm into system path to work from GUI apps'
end

dep 'node.managed'

# This is needed as PATH is not set properly in GUI apps, only a few of them, like /usr/bin
dep 'link node & npm into system path to work from GUI apps' do
  met? { binaries.all? { |binary| "#{bin_path}/#{binary}".p.exists? } }
  meet {
    log_block "Linking Node command line utilities #{binaries} into #{bin_path}" do
      binaries.each { |binary|
        shell %Q{ln -sf "#{path_to_binaries}/#{binary}" "#{bin_path}/#{binary}"}, :sudo => true
      }
    end
  }

  def binaries
    %w[node npm]
  end

  def bin_path
    '/usr/bin'.p
  end

  def path_to_binaries
    '/usr/local/bin'.p
  end
end
