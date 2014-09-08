# A PkgHelper for managing Homebrew Cask packages
module Babushka
  class CaskHelper < BrewHelper
  class << self
    def pkg_type; :cask end
    def pkg_binary; 'brew' end
    def pkg_cmd; 'brew cask' end
    def manager_key; :cask end
    def manager_dep; 'brew-cask' end

    # The default implementation uses "which pkg_binary" to check if
    # this package manager is present. Since Homebrew Cask is an add-on
    # to Homebrew, it's necessary to check if the relevant package is
    # installed in Homebrew.
    def present?
      Babushka::ShellHelpers.shell?("brew list | grep '^#{manager_dep}$'")
    end

    # Delegate prefix to Homebrew helper
    def prefix
      Babushka::BrewHelper.prefix
    end


    private

    # brew cask list <pkg> will return ok if pkg is installed and not ok otherwise
    def has_pkg? pkg
      pkg_name = pkg.respond_to?(:name) ? pkg.name : pkg
      Babushka::ShellHelpers.shell?("brew cask list | grep '^#{pkg_name}$'")
    end

    # Include multiple formulas paths (from taps)
    def existing_formulas
      formulas_paths.map { |path|
        Dir[path / '*.rb'].map { |f| File.basename f }
      }.flatten.uniq
    end

    # Homebrew Cask packages get installed in the "caskroom"
    def installed_pkgs_path
      caskroom
    end

    # The path where Cask formulae are kept
    #
    # e.g.: "/usr/local/Library/Taps/caskroom/homebrew-cask/Casks"
    def formulas_paths
      Dir[taps_path / '**/Casks'].map(&:p)
    end

    # The path to Homebrew's "Taps" directory
    def taps_path
      prefix.p / 'Library/Taps'
    end

    # The place where Homebrew casks are installed.
    #
    # Currently this uses the default caskroom for Homebrew Cask, which
    # is "/opt/homebrew-cask/Caskroom".
    #
    # TODO: make this determine the real caskroom
    def caskroom
      "/opt/homebrew-cask/Caskroom".p
    end
  end
  end
end

Babushka::PkgHelper.all_manager_keys << Babushka::CaskHelper.manager_key
