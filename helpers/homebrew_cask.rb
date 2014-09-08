# Homebrew Cask provides a friendly homebrew-style CLI workflow for the
# administration of Mac applications distributed as binaries.
#
# https://github.com/caskroom/homebrew-cask

# Installs Homebrew Cask
dep 'brew-cask', :for => :osx do
  requires Babushka::BrewHelper.manager_dep

  met? { Babushka::CaskHelper.present? }
  meet { `brew install caskroom/cask/brew-cask` }
end
