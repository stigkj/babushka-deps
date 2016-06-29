dep 'Beyond Compare' do
  requires {
    on :osx, 'beyond-compare.cask'
    # TODO setup for Linux too
    otherwise { unsupported_platform! }
  }
  requires 'put BCompare and bcomp in path'
end

dep 'beyond-compare.cask', :for => :osx

dep 'put BCompare and bcomp in path' do
  met? { binaries.all? { |binary| "#{bin_path}/#{binary}".p.exists? } }
  meet {
    log_block "Linking Beyond Compare command line utilities #{binaries} into #{bin_path}" do
      binaries.each { |binary|
        shell %Q{ln -sf "#{path_to_binaries}/#{binary}" "#{bin_path}/#{binary}" }
      }
    end
  }
end

def binaries
  %w[BCompare bcomp]
end

# We assume babushka's method for finding a directory that is in path is ok
def bin_path
  "/usr/local/bin".p
end

def path_to_binaries
  "/Applications/Beyond Compare.app/Contents/MacOS/".p
end

