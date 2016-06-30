dep 'Setup ssh' do
  met? {
    ssh_dir.children.all? { |file| File.world_readable?(file) == nil } &&
    ssh_sockets_dir.exists?
  }
  meet {
    log_block 'Remove world readable permission from ssh files' do
      ssh_dir.children.each { |file| file.chmod(0600) }
    end
    log_shell 'Create directory for sockets', 'mkdir -p .ssh_sockets'
    log_shell 'Add ssh key to agent and keychain', 'ssh-add -K'
  }  
end

def ssh_dir
  "#{ENV['HOME']}/.ssh".p
end

def ssh_sockets_dir
  "#{ENV['HOME']}/.ssh_sockets".p
end
