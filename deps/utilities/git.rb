dep 'git' do
  requires 'git.managed',
           # Need that mackup restore has setup hooks before fixing them below
           'mackup'

  met? {
    all_hooks.all? { |filename| filename.p.executable? }
  }
  meet {
    all_hooks.each { |filename| shell "chmod +x #{filename}" }
  }
end

dep 'git.managed'

def all_hooks
  '~/.git/template/hooks/'.p.children
end
