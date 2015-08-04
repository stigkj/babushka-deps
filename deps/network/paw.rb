# Nice REST client
dep 'Paw' do
  requires 'paw.cask',
           'install license for Paw'
end

dep 'paw.cask', :for => :osx

dep 'install license for Paw' do
    # TODO read from license.txt and install it of possible. If not, just show it.
end
