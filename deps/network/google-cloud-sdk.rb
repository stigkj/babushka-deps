# Installs the Google cloud SDK, including the gcloud tool
dep 'Google Cloud SDK' do
  requires 'google-cloud-sdk.cask',
           'google-cloud-sdk.shell_config_ext'
end

dep 'google-cloud-sdk.cask'

dep 'google-cloud-sdk.shell_config_ext' do
  content <<-EOF.unindent
      source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
      source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'
    EOF
end
