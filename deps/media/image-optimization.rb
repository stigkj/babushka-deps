dep 'Image optimization' do
  requires 'imageoptim.cask'
end

# A GUI tool for optimizing images
dep 'imageoptim.cask'

# A CLI for optimizaing images, using several other tools if available
# TODO disabled because it has no builds for Apple silicon
dep 'imageoptim-cli.managed' do
  provides 'imageoptim'
end
