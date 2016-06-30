dep 'Update Keychain settings' do
  met? { shell('security show-keychain-info 2>&1').include? 'lock-on-sleep timeout=900s' }
  meet { log_shell 'Setup lock timeouts for login keychain', 'security set-keychain-settings -lu -t 900' }
end
