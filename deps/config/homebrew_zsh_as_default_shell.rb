homebrew_zsh_location = '/opt/homebrew/bin/zsh'

dep 'Homebrew zsh as default shell' do
  requires 'zsh'

  met? { shell("dscl . -read /Users/#{ENV['USER']} UserShell").include? homebrew_zsh_location }
  meet { 
    log_shell 'Setting Homebrew zsh as default shell', 
              "dscl . -create /Users/#{ENV['USER']} UserShell #{homebrew_zsh_location}",
              :sudo => true
  }
end
