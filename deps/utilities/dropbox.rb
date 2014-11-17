dep 'Dropbox' do
  requires {
    on :osx, 'Dropbox.app'
    # TODO setup for Linux too
    otherwise { unsupported_platform! }
  }
  requires 'Make sure Dropbox is initialized before continuing'
end

dep 'Dropbox.app', :for => :osx do
  source 'https://d1ilhw0800yew8.cloudfront.net/client/Dropbox%202.10.51.dmg'
end

dep 'Make sure Dropbox is initialized before continuing' do
  met? { '~/Dropbox'.p.exists? }
  meet {
    Process.spawn('open /Applications/Dropbox.app')
    Babushka::Prompt.confirm('Log into Dropbox, and wait for the Dropbox folder to be created and synced before pressing enter', :default => 'y')
  }
end
