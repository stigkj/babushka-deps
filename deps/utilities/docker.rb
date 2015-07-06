dep 'Docker' do
  requires 'docker.managed',
           'docker-machine.managed',
           'docker-compose.managed',
           'docker-swarm.managed'
end

# Easily manage containers
dep 'docker.managed'

# Create and manage Docker servers locally or in the cloud
dep 'docker-machine.managed'

# Manage multi-container applications with a single file
dep 'docker-compose.managed'

# A Docker-native clustering system
dep 'docker-swarm.managed'

# TODO Script called localdocker which opens the local docker VM should be located in path
