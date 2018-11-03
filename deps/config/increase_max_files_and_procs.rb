dep 'Increase maximum open files and running processes' do
  requires 'Increase maxfiles limit.launchd_plist',
           'Increase maxproc limit.launchd_plist'

end

dep 'Increase maxfiles limit.launchd_plist' do
  launchd_plist_file maxfiles_plist_file
  content_to_append <<-EOF.unindent
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <!-- Created by Babushka -->
    <plist version="1.0">
      <dict>
        <key>Label</key>
          <string>limit.maxfiles</string>
        <key>ProgramArguments</key>
          <array>
            <string>launchctl</string>
            <string>limit</string>
            <string>maxfiles</string>
            <string>528</string>
            <string>65536</string>
          </array>
        <key>RunAtLoad</key>
          <true/>
        <key>ServiceIPC</key>
          <false/>
      </dict>
    </plist>
  EOF

  def maxfiles_plist_file
    '/Library/LaunchDaemons/limit.maxfiles.plist'.p
  end
end

dep 'Increase maxproc limit.launchd_plist' do
  launchd_plist_file maxproc_plist_file
  content_to_append <<-EOF.unindent
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <!-- Created by Babushka -->
    <plist version="1.0">
      <dict>
        <key>Label</key>
          <string>limit.maxproc</string>
        <key>ProgramArguments</key>
          <array>
            <string>launchctl</string>
            <string>limit</string>
            <string>maxproc</string>
            <string>2048</string>
            <string>2048</string>
          </array>
        <key>RunAtLoad</key>
          <true/>
        <key>ServiceIPC</key>
          <false/>
      </dict>
    </plist>
  EOF

  def maxproc_plist_file
    '/Library/LaunchDaemons/limit.maxproc.plist'.p
  end
end

meta :launchd_plist do
  accepts_value_for :launchd_plist_file
  accepts_value_for :content_to_append

  template {
    met? { launchd_plist_file.exists? }
    meet {
      log_block "Creating #{launchd_plist_file}" do
        tmp_file.write content_to_append
        shell "mv #{tmp_file} #{launchd_plist_file}", :sudo => true
        shell "chown root:wheel #{launchd_plist_file}", :sudo => true
        shell "chmod 644 #{launchd_plist_file}", :sudo => true
      end
    }
  }

  def tmp_file
    '/tmp/launchd_plist_file'.p
  end
end
