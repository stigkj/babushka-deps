# Tools that shows cheat sheets
dep 'Cheatsheet tools' do
  requires 'cheat.pip',
           'cheatsheet.cask'
end

# An interactive cheat sheet tool for the command-line
# TODO look at integrating this correctly
# https://github.com/denisidoro/navi
dep 'navi.managed'

# View interactive cheat sheets on the command line
dep 'cheat.pip'

# Show all keyboard shortcuts for the current application
dep 'cheatsheet.cask'
