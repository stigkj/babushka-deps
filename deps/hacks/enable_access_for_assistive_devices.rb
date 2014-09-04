dep 'Enable access or assistive devices', :for => :osx do
  met? { File.exists? '/private/var/db/.AccessibilityAPIEnabled' }
  meet { shell('touch /private/var/db/.AccessibilityAPIEnabled', :sudo => true) }
end