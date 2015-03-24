# Installs the Google cloud SDK, including the gcloud tool
dep 'google-cloud-sdk.cask', :for => :osx do
  requires 'google-cloud-sdk.shell_config'
end

dep 'google-cloud-sdk.shell_config' do
  must_include 'google-cloud-sdk'
  content_to_append google_cloud_sdk_shell_config
end

def google_cloud_sdk_shell_config
  <<-EOF.unindent
    # Inserted by google-cloud-sdk in Babushka
    source '/opt/homebrew-cask/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
    source '/opt/homebrew-cask/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'
  EOF
end
