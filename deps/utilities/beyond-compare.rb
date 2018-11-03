dep 'Beyond Compare' do
  requires 'beyond-compare.cask',
           'Put BCompare and bcomp in path'
end

dep 'beyond-compare.cask', :for => :osx

dep 'Put BCompare and bcomp in path' do
  met? { binaries.all? { |binary| (bin_path / binary).exists? } }
  meet {
    log_block "Linking Beyond Compare command line utilities #{binaries} into #{bin_path}" do
      binaries.each { |binary|
        shell %Q{ln -sf "#{dir_with_binaries / binary}" "#{bin_path / binary}" }
      }
    end
  }

  def binaries
    %w[BCompare bcomp]
  end

  # We assume babushka's method for finding a directory that is in path is ok
  def bin_path
    '/usr/local/bin'.p
  end

  def dir_with_binaries
    '/Applications/Beyond Compare.app/Contents/MacOS/'.p
  end
end
