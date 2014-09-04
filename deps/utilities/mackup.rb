dep 'mackup' do
  requires 'Dropbox',
    'mackup HEAD',
    'Make sure mackup backup or restore is run before continuing'
end

dep 'mackup HEAD' do
  met? { Babushka::BrewHelper.has? 'mackup' }
  meet { log_shell 'Installing mackup', 'brew install mackup --HEAD' }
end

dep 'Make sure mackup backup or restore is run before continuing' do
  meet { Babushka::Prompt.confirm('Run mackup backup or restore now in another shell before pressing enter', :default => 'y') }
end
