dep 'GitHub tools' do
  requires 'ghrepo.npm',
           'ghrls.managed'
end

# Create GitHub repo for current folder
dep 'ghrepo.npm'

# Lists and describes github releases
dep 'ghrls.managed' do
  installs 'dtan4/tools/ghrls'
end

# Writes the README content of a GitHub repository to stdout
dep 'gh-rtfm.npm'

# GitHub Notifications in your menu bar
dep 'gitify.cask'
