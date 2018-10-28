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

# A PkgHelper for managing Homebrew Cask packages
module Babushka
  class CaskHelper < BrewHelper
  class << self
    def pkg_type; :cask end
    def pkg_binary; 'brew' end
    def pkg_cmd; 'brew cask' end
    def manager_key; :cask end

    def has_pkg? pkg
      pkg_name = pkg.respond_to?(:name) ? pkg.name : pkg
      !Babushka::ShellHelpers.shell("brew cask info #{pkg_name}").include? 'Not installed'
    end

    # With new Homebrew releases which includes cask, 'brew update' must be used instead of 'brew cask update'
    def pkg_update_command
      "#{pkg_binary} update"
    end

    # Homebrew Cask packages get installed in the "caskroom" which is "<prefix>/Caskroom"
    def installed_pkgs_path
      "/usr/local/Caskroom".p
    end
  end
  end
end

Babushka::PkgHelper.all_manager_keys << Babushka::CaskHelper.manager_key
