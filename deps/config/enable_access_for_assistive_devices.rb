dep 'Enable access for assistive devices', :for => :osx do
  met? { path.exist? }
  meet { log_shell 'Enabling access for assistive devices', "touch #{path}", :sudo => true }

  def path
    '/private/var/db/.AccessibilityAPIEnabled'.p
  end
end
