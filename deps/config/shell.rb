dep 'Setup shell' do
  requires 'Set Homebrew zsh as default shell'
end

dep 'Set Homebrew zsh as default shell' do
  requires 'Add Homebrew zsh to legal shells'

  met? { shell('dscl . -read /Users/stiklepp UserShell').include? homebrew_zsh_location }
  meet { log_shell 'Setting Homebrew zsh as default shell', "chsh -s #{homebrew_zsh_location}" }
end

dep 'Add Homebrew zsh to legal shells' do
  met? { '/etc/shells'.p.read.include? homebrew_zsh_location }
  meet { log_shell 'Adding Homebrew zsh to legal shells', "echo #{homebrew_zsh_location} | sudo tee -a /etc/shells" }
end

def homebrew_zsh_location
  '/usr/local/bin/zsh'
end
