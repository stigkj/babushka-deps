dep 'Telia Sky' do
  requires 'Telia Sky.app'
  requires 'Telia Sky must be initialized before continuing'
end

dep 'Telia Sky.app' do
  source 'https://sky.telia.no/update/get/current/get.dmg'
end

dep 'Telia Sky must be initialized before continuing' do
  met? { '~/Telia Sky'.p.exists? }
  meet {
    Process.spawn('open /Applications/Telia Sky.app')
    Babushka::Prompt.confirm('Log into Telia Sky, and wait for the Telia Sky folder to be created and synced before pressing enter', :default => 'y')
  }
end
