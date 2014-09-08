# Installs a particular Homebrew Cask package
#
#   * installs: The list of cask names to install (optional, defaults
#               to the base name of the dep)
meta :cask do
  accepts_list_for :installs, :basename, :choose_with => :via

  template {
    requires Babushka::CaskHelper.manager_dep

    met? { installs.all? {|pkg| Babushka::CaskHelper.has?(pkg) }}
    meet { Babushka::CaskHelper.handle_install! installs }
  }
end
