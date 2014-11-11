dep 'dvm' do
  requires 'homebrew tap'.with('fnichol/dvm'),
           'dvm.managed',
           'localdocker hosts entry',
           'dvm env'
end

dep 'dvm.managed'

dep 'localdocker hosts entry' do
  met? {
    hosts_file.grep /localdocker/
  }
  meet {
    log_shell 'Adding localdocker entry to /etc/hosts',
              "echo #{hosts_entry} >> #{hosts_file.expand_path}",
              :sudo => true
  }
end

dep 'dvm env' do
  met? {
    Babushka::FileDefs.shell_profile_files.all? { |path|
      path.exists? &&
      path.read.include?('$(dvm env)')
    }
  }
  meet {
    log_block 'Set dvm env in shell profile files' do
      Babushka::FileDefs.shell_profile_files.each { |path|
        path.append "$(dvm env)\n"
      }
    end
  }
end

def hosts_file
  '/etc/hosts'.p
end

def hosts_entry
  '192.168.42.43 localdocker'
end
