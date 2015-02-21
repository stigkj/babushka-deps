# Installs Haskell and Cabal, its package manager
dep 'Haskell' do
  requires 'ghc.managed',
           'cabal-install.managed'
end

dep 'ghc.managed'

dep 'cabal-install.managed' do
  provides 'cabal'
end
