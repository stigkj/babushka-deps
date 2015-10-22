dep 'Setup ssh' do
  met? {
    ssh_dir.children.all? { |file| File.world_readable?(file) == nil }
  }
  meet {
    log_block 'Remove world readable permission from ssh files' do
      ssh_dir.children.each { |file| file.chmod(0600) }
    end
  }
end

def ssh_dir
  "#{ENV['HOME']}/.ssh".p
end
