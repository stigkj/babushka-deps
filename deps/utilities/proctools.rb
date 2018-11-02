# Tools to work with processes, searching and sending signals to them
dep 'proctools' do
  requires 'proctools.managed'
end

dep 'proctools.managed' do
  provides 'pgrep'
end
