# A cli for Vault
dep 'safe' do
  requires 'safe.managed'
end

dep 'safe.managed' do
  installs 'starkandwayne/cf/safe'
end
