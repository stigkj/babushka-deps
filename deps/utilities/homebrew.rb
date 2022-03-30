dep 'homebrew' do
  requires 'build tools'
           'homebrew downloaded'
  met? { in_path? 'brew' }
  meet { 
    log_block 'Setup brew environment variables' do
      '~/.zprofile'.p.append 'eval "$(/opt/homebrew/bin/brew shellenv)"'
    end
    unmeetable! 'Start a new shell to get brew in path and run the babushka command again'
  }
end

dep 'homebrew downloaded' do
  met? { '/opt/homebrew'.p.writable_real? }
  meet { 
    log_shell 'Installing Homebrew', '/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"', :sudo => 'stiklepp', :spinner => true
  }
end
