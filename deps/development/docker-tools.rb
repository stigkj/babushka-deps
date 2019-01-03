dep 'Docker tools' do
  requires 'docker-edge.cask',
           'docker-sync.gem',
           'ctop.managed',
           'dry',
           'dlayer.go',
           'kitematic.cask'
end

dep 'docker-edge.cask'

# Improves docker for development
dep 'docker-sync.gem'

# Docker with better file system sharing and dns/http proxy built in
dep 'dinghy.managed'

# Top-like interface for container metrics
dep 'ctop.managed'

# A console gui for working with docker
dep 'dry' do
  requires 'homebrew tap'.with('moncho/dry'),
           'dry.managed'
end
dep 'dry.managed'

# Stats collector for Docker layers
dep 'dlayer.go' do
  github 'wercker/dlayer'
end

# GUI for managing docker images and containers
dep 'kitematic.cask'

# Extracts information about images, etc. from docker registries
# look at https://github.com/projectatomic/skopeo
dep 'skopeo.go'

# Run Docker images as native commands
dep 'whalebrew.managed'

# TODO create a docker plugin for asdf, for versioning of docker clients, or use https://github.com/howtowhale/dvm
# TODO look at http://dockersl.im - minify and secure your Docker containers
