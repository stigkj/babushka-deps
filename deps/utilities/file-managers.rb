# TODO http://mac.eltima.com/file-manager.html
# Others:
# https://github.com/jarun/nnn
# https://ranger.github.io
# https://github.com/Vifon/deer
# https://vifm.info/
# http://midnight-commander.org/
# https://godoc.org/github.com/gokcehan/lf
dep 'File managers' do
  requires 'nnn.managed'
end

# A very fast console file manager
dep 'nnn.managed'

# Dual-pane file manager
# TODO: buy it if good (https://fman.io/buy)
dep 'fman.cask'

# Advanced local and remote file manager
dep 'forklift.cask'
