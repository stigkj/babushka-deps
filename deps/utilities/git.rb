dep 'git' do
  requires 'git.managed',
           'git-up.gem',
           # Need that mackup restore has setup hooks before fixing them below
           'mackup'

  met? {
    all_hooks.all? { |filename| filename.p.executable? }
  }
  meet {
    log_block 'Making all git hooks executable' do
      all_hooks.each { |filename| shell "chmod +x #{filename}" }
    end
  }
end

dep 'git.managed'

dep 'git-up.gem' do
  requires 'Setup Ruby environment'

  met? { shell? 'man -w git-up' }
  meet {
    log_block "Installing git-up's man page" do
      `echo | git up install-man`
    end
  }
end

def all_hooks
  '~/.git_global/template/hooks/'.p.children
end
