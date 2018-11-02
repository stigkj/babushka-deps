dep 'Image optimization' do
  requires 'imageoptim.cask',
           'imageoptim-cli.managed'
end

# A GUI tool for optimizing images
dep 'imageoptim.cask'

# A CLI for optimizaing images, using several other tools if available
dep 'imageoptim-cli.managed' do
  provides 'imageoptim'
end
