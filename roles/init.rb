# These dependencies must be installed and initialized before installing anything else
dep 'init' do
  requires 'Dropbox',
           'mackup',
           'Convert HD to case-sensitive format'
end

dep 'Convert HD to case-sensitive format', :for => :osx do
  requires_when_unmet 'iPartition.app'

  met? { shell('diskutil info disk1').include? 'Case-sensitive' }
  meet { Babushka::Prompt.confirm('Start iPartition and convert partition to case-sensitive format before going any further', :default => 'y') }
end
