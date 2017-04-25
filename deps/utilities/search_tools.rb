dep 'Search tool' do
  requires 'sift.managed'
end

# TODO maybe setup saner defaults in global config?
dep 'sift.managed'

dep 'ucg.managed'

dep 'ripgrep.managed' do
  provides 'rg'
end

dep 'the_silver_searcher.managed' do
  provides 'ag'
end

dep 'the_platinum_searcher.managed' do
  provides 'pt'
end
