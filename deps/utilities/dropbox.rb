dep 'Dropbox' do
  requires {
    on :osx, 'Dropbox.app'
    # TODO setup for Linux too
    otherwise { unsupported_platform! }
  }
  requires 'Dropbox must be initialized before continuing'
end

dep 'Dropbox.app', :for => :osx do
  source 'https://www.dropbox.com/download?full=1&plat=mac'
end

dep 'Dropbox must be initialized before continuing' do
  met? { '~/Dropbox'.p.exists? }
  meet {
    Process.spawn('open /Applications/Dropbox.app')
    Babushka::Prompt.confirm('Log into Dropbox, and wait for the Dropbox folder to be created and synced before pressing enter', :default => 'y')
  }
end
