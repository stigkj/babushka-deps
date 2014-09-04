dep 'git' do
  requires 'git.managed'
  # Need that mackup restore has setup hooks before fixing them below
  requires 'mackup'

  met? {
    '~/.git/template/hooks/'.p.children.all? { |filename| filename.p.executable? }
  }
  meet {
    '~/.git/template/hooks/'.p.children.each { |filename| shell "chmod +x #{filename}" }
  }
end

dep 'git.managed'
