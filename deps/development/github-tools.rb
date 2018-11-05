dep 'GitHub tools' do
  requires 'ghrepo.npm',
           'ghrls'
end

# Create GitHub repo for current folder
dep 'ghrepo.npm'

# Lists and describes github releases
dep 'ghrls' do
  requires 'homebrew tap'.with('dtan4/tools'),
           'ghrls.managed'
end
dep 'ghrls.managed'

# Writes the README content of a GitHub repository to stdout
dep 'gh-rtfm.npm'

# GitHub Notifications in your menu bar
dep 'gitify.cask'
