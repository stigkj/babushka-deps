dep 'Kubernetes tools' do
  requires 'Kubernetes CLI',
           'kubectx.binary',
           'stern.managed'
end

# A cli (kubectl) for kubernetes
dep 'Kubernetes CLI' do
  requires 'Google Cloud SDK',
           'kubernetes-cli.shell_config_ext'

  met? { in_path? 'kubectl' }
  meet { log_shell 'Installing kubectl', 'gcloud components install kubectl' }
end

dep 'kubernetes-cli.shell_config_ext' do
  content <<-EOF.unindent
      alias k='kubectl --context dev'
      alias kp='kubectl --context prod'

      source <(kubectl completion zsh)
    EOF
end

# Utility for switching between Kubernetes namespaces and contexts easily
dep 'kubectx.binary' do
  met? { in_path? 'kctx' }
  meet {
    log_shell 'Installing kubectx with short names', 'brew install kubectx --with-short-names'
  }
end

# Tail several Kubernetes pods at once
dep 'stern.managed'

# TODO check out kail for tailing k8s pods

# Kubernetes cluster that runs on xhyve
dep 'kube-cluster.cask'
