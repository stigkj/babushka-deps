dep 'Convert HD to case-sensitive format', :for => :osx do
  requires_when_unmet 'iPartition.app'

  met? {
    (shell('diskutil info disk1 || echo error').include? 'Case-sensitive') ||
    (shell('diskutil info disk0 || echo error').include? 'VBOX')
  }
  meet { Babushka::Prompt.confirm('Start iPartition and convert partition to case-sensitive format before going any further', :default => 'y') }
end
