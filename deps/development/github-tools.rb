dep 'GitHub tools' do
  requires 'ghrepo.npm',
           'ghrls.managed'
end

# Create GitHub repo for current folder
dep 'ghrepo.npm'

# Lists and describes github releases
# TODO: install from tap --> https://github.com/dtan4/ghrls
dep 'ghrls.managed'

# Writes the README content of a GitHub repository to stdout
dep 'gh-rtfm.npm'

# GitHub Notifications in your menu bar
dep 'gitify.cask'
