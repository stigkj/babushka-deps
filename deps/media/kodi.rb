# XBMC in new glory
dep 'Kodi' do
  requires 'kodi.cask',
           'dreamfilmhd kodi plugin'
end

dep 'dreamfilmhd kodi plugin' do
    met? {}
    meet {
         Babushka::Resource.extract(uri) {|archive|
          Dir.glob("**/#{app_name_matcher}").select {|entry|
            (entry / 'Contents/MacOS').exists? # must be an app bundle itself
          }.reject {|entry|
            entry['.app/'] # mustn't be inside another app bundle
          }.map {|entry|
            pre = prefix_to_use
            target_path = pre / File.basename(entry)
            log_block("Found #{entry}, copying to #{pre}") {
              if !target_path.exists? || confirm("Overwrite #{target_path}?") { target_path.rm }
                entry.p.copy target_path
              end
            }
          }
        }
      Babushka::Resource.extract "https://github.com/daniel-lundin/dreamfilm-xbmc/releases/download/v0.1.8/plugin.video.dreamfilm-0.1.8.zip" do
        log_shell "Installing rubygems-#{version}", "ruby setup.rb", :spinner => true, :sudo => !File.writable_real?(which('ruby'))
      end
    }
    # unzip into ~/Library/Application Support/Kodi/addons
    # https://github.com/daniel-lundin/dreamfilm-xbmc/releases/download/v0.1.8/plugin.video.dreamfilm-0.1.8.zip
end
