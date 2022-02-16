dep 'Kubernetes tools' do
  requires 'Kubernetes CLI',
           'k9s',
           'kubectx.binary',
           'stern.managed',
           'popeye'
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

dep 'k9s' do
  requires 'homebrew tap'.with('derailed/k9s'),
           'k9s.managed'
end
dep 'k9s.managed'

# Utility for switching between Kubernetes namespaces and contexts easily
# TODO also look at https://github.com/shyiko/kubensx
dep 'kubectx.binary' do
  met? { in_path? 'kctx' }
  meet {
    log_shell 'Installing kubectx with short names', 'brew install kubectx --with-short-names'
  }
end

# Tail several Kubernetes pods at once
dep 'stern.managed'

# TODO check out kail for tailing k8s pods

dep 'popeye' do
  requires 'homebrew tap'.with('derailed/popeye'),
           'popeye.managed'
end
dep 'popeye.managed'


# Kubernetes cluster that runs on xhyve
dep 'kube-cluster.cask'
 
# TODO look at https://github.com/sbstp/kubie - context/namespace/prompt stuff
