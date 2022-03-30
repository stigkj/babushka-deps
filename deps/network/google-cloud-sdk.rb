# Installs the Google cloud SDK, including the gcloud tool
dep 'Google Cloud SDK' do
  requires 'google-cloud-sdk.cask',
           'google-cloud-sdk.shell_config_ext',
           'google-cloud-sdk-path-working'
end

dep 'google-cloud-sdk.cask'

dep 'google-cloud-sdk.shell_config_ext' do
  content <<-EOF.unindent
      source '/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
      source '/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'
    EOF
end

dep 'google-cloud-sdk-path-working' do
  met? { ENV['PATH'].include? 'google-cloud-sdk' }
  meet { unmeetable! 'Start a new shell to get Google Cloud SDK in path and run the babushka command again' }
end