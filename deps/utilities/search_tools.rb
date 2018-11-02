dep 'Search tools' do
  requires 'ripgrep.managed',
	       'fd.managed'
end


dep 'ripgrep.managed' do
  provides 'rg'
end

# A simple, fast and user-friendly alternative to 'find'
dep 'fd.managed'

# TODO maybe setup saner defaults in global config?
dep 'sift.managed'

dep 'ucg.managed'

dep 'the_silver_searcher.managed' do
  provides 'ag'
end

dep 'the_platinum_searcher.managed' do
  provides 'pt'
end
