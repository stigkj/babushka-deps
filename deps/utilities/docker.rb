dep 'Docker' do
  requires 'docker.managed',
           'docker-machine.managed',
           'docker-compose.managed',
           'docker-swarm.managed'
end

# Easily manage containers
dep 'docker.managed'

# Create and manage Docker servers locally or in the cloud
dep 'docker-machine.managed' do
  requires 'docker-machine.shell_config'
end

# Manage multi-container applications with a single file
dep 'docker-compose.managed'

# A Docker-native clustering system
dep 'docker-swarm.managed'

dep 'docker-machine.shell_config' do
  must_include 'DOCKER_HOST'
  content_to_append docker_machine_shell_config
end

def docker_machine_shell_config
  <<-EOF.unindent
    # Inserted by Docker dependency in Babushka
    export DOCKER_TLS_VERIFY="1"
    export DOCKER_HOST="tcp://192.168.99.100:2376"
    export DOCKER_CERT_PATH="/Users/stiklepp/.docker/machine/machines/dev"
    export DOCKER_MACHINE_NAME="dev"
  EOF
end

# TODO Script called localdocker which opens the local docker VM should be located in path
