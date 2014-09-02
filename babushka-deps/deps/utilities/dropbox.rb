dep 'Dropbox' do
  requires {
    on :osx, 'dropbox.cask'
    # TODO setup for Linux too
    otherwise { unsupported_platform! }
  }
  requires 'Make sure Dropbox is initialized before continuing'
end

dep 'dropbox.cask', :for => :osx

dep 'Make sure Dropbox is initialized before continuing' do
  met? { '~/Dropbox'.p.exists? }
  meet { Babushka::Prompt.confirm('Start DropBox and logon, and wait for the Dropbox folder to be created and synced before pressing enter', :default => 'y') }
end
