# A nice disk usage visualization tool
dep 'DaisyDisk' do
  requires 'DaisyDisk must be installed from App Store before resuming',
           'daisydisk.cask'
end

dep 'DaisyDisk must be installed from App Store before resuming' do
  met? { '/Applications/DaisyDisk.app'.p.exists? }
  meet {
    Babushka::Prompt.confirm('Install DaisyDisk from App Store before resuming', :default => 'y')
  }
end

dep 'daisydisk.cask'
