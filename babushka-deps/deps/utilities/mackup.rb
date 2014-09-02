dep 'mackup' do
  requires 'Dropbox',
    'mackup.managed',
    'Make sure mackup backup or restore is run before continuing'
end

dep 'mackup.managed'

dep 'Make sure mackup backup or restore is run before continuing' do
  meet { Prompt.confirm('Run mackup backup or restore now before pressing enter', :default => 'y') }
end
