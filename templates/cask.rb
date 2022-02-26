# Installs a particular Homebrew Cask package
#
#   * installs: The list of cask names to install (optional, defaults
#               to the base name of the dep)
meta :cask do
  accepts_value_for :installs, :basename, :choose_with => :via

  template {
    requires Babushka::BrewHelper.manager_dep

    met? {
      shell("brew info --cask #{installs}").exclude? 'Not installed'
    }
    meet {
      log_shell "Installing #{installs}",
                "brew install --cask #{installs}"
    }
  }
end
