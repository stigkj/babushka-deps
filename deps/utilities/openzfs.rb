dep 'OpenZFS' do
  requires {
    on :osx, 'OpenZFS.installer'
    # TODO setup for Linux too
    otherwise { unsupported_platform! }
  }
  requires 'Setup ZFS beforing resuming'
end

dep 'OpenZFS.installer', :for => :osx do
  #installs '/usr/local/bin/zfs'
  source 'https://openzfsonosx.org/w/images/6/6b/OpenZFS_on_OS_X_1.5.2.dmg'
end

dep 'Setup ZFS beforing resuming' do
  met? { '~/sdfa'.p.exists? }
  meet {
    puts 'diskutil eraseVolume ZFS tank rdisk0s4'
    puts 'sudo zpool create -f -o ashift=13 -O casesensitivity=sensitive -O normalization=formD tank disk0s4'
    puts 'zfs create tank/stiklepp'
    puts 'zfs set mountpoint=/Users/stiklepp tank/stiklepp'
    puts 'zfs mount tank/stiklepp'
    Babushka::Prompt.confirm('Log into Dropbox, and wait for the Dropbox folder to be created and synced before pressing enter', :default => 'y')
  }
end
