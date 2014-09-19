module Babushka
  class BrewHelper < PkgHelper
  class << self
    def manager_dep; 'stigkj:my_forked_homebrew' end
  end
  end
end
