# Installs a tool written in Haskell
meta :cabal do
  template do
    requires 'cabal.binary'

    met? { in_path? basename }
    meet {
      log_shell "Installing #{basename}",
                "cabal install #{basename}"
      log_shell "Putting #{basename} in $PATH",
                'asdf reshim haskell'
    }
  end
end

# Haskell's package manager
dep 'cabal.binary' do
  requires 'haskell.asdf'

  met? { in_path? 'cabal' }
  meet {
    log_shell 'Installing cabal',
              'stack install cabal-install'
    log_shell 'Putting cabal in $PATH',
              'asdf reshim haskell'
  }
end

dep 'haskell.asdf' do
  version '8.4.3'
end
