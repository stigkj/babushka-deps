dep 'OpenZFS' do
  requires {
    on :osx, 'OpenZFS.installer'
    # TODO setup for Linux too
    otherwise { unsupported_platform! }
  }
  requires 'Setup zfs beforing resuming'
end

dep 'OpenZFS.installer', :for => :osx do
  provides 'zfs'
  source 'https://openzfsonosx.org/w/images/6/6b/OpenZFS_on_OS_X_1.5.2.dmg'
end

dep 'Setup zfs beforing resuming' do
  requires 'Setup automount for zfs',
           'Create zfs pool and filesystem'

  met? { shell('mount').include? 'tank/users on /Users (zfs,' }
  meet {
    Babushka::Prompt.confirm('Need to restart to mount zfs filesystem correctly', :default => 'y')
    shell "shutdown -r now", :sudo => true
  }
end

dep 'Setup automount for zfs' do
  requires 'Setup auto_master.write_as_root',
           'Setup auto_users.write_as_root'
end

dep 'Setup auto_master.write_as_root' do
  file_name auto_master_file
  content auto_master_content
end

dep 'Setup auto_users.write_as_root' do
  file_name auto_users_file
  content auto_users_content
end

dep 'Create zfs pool and filesystem' do
  met? { shell('zfs list').include? 'tank/users' }
  meet {
    puts 'sudo diskutil eraseVolume ZFS tank rdisk0s4'
    puts 'sudo zpool create -f -o ashift=13 -O casesensitivity=sensitive -O normalization=formD tank disk0s4'
    puts 'sudo zfs create tank/users'
    puts 'sudo zfs set mountpoint=/Users tank/users'
    Babushka::Prompt.confirm('Do the stuff above manually before resuming', :default => 'y')
  }
end

def auto_master_file
  '/etc/auto_master'.p
end

def auto_users_file
  '/etc/auto_users'.p
end

def auto_master_content
  <<-EOF.unindent
    #
    # Automounter master map
    #
    /-                auto_users
    +auto_master      # Use directory service
    /net              -hosts              -nobrowse,hidefromfinder,nosuid
    /home             auto_home           -nobrowse,hidefromfinder
    /Network/Servers  -fstab
    /-                -static
  EOF
end

def auto_users_content
  <<-EOF.unindent
    /users    -fstype=zfs    tank/users
  EOF
end
