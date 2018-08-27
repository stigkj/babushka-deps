# Installs the Google cloud SDK, including the gcloud tool
dep 'Google Cloud SDK' do
  requires 'google-cloud-sdk.cask',
           'google-cloud-sdk.shell_config'
end

dep 'google-cloud-sdk.cask'

dep 'google-cloud-sdk.shell_config' do
  must_include 'google-cloud-sdk'
  content_to_append google_cloud_sdk_shell_config
end

def google_cloud_sdk_shell_config
  <<-EOF.unindent
    # Inserted by google-cloud-sdk in Babushka
    source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
    source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'
    source <(kubectl completion zsh)
  EOF
end
