dep 'boot2docker' do
  requires 'boot2docker.managed',
           'boot2docker.shell_config',
           'localdocker hosts entry'
end

dep 'boot2docker.managed'

dep 'boot2docker.shell_config' do
  must_include 'DOCKER_HOST'
  content_to_append shell_config
end

dep 'localdocker hosts entry' do
  met? {
    hosts_file.grep /localdocker/
  }
  meet {
    log_shell "Adding localdocker entry to #{hosts_file}",
              "echo #{hosts_entry} >> #{hosts_file.expand_path}",
              :sudo => true
  }

  def hosts_file
    '/etc/hosts'.p
  end

  def hosts_entry
    "#{docker_host_ip_address} localdocker"
  end
end

def shell_config
  <<-EOF.unindent
    # Inserted by boot2docker dependency in Babushka
    export DOCKER_HOST=tcp://#{docker_host_ip_address}:2376
    export DOCKER_CERT_PATH=#{ENV['HOME']}/.boot2docker/certs/boot2docker-vm
    export DOCKER_TLS_VERIFY=1
  EOF
end

def docker_host_ip_address
  '192.168.59.103'
end
