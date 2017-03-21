dep 'git' do
  requires 'git.managed',
           'git-up',
           'git-sweep.pip',
           'git-run.npm',
           'git-stats.npm',
           'diff-so-fancy.npm',
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

dep 'git-up' do
  requires 'Setup Ruby environment',
           'git-up.gem'

  met? { shell? 'man -w git-up' }
  meet {
    log_block "Installing git-up's man page" do
      `echo | git up install-man`
    end
  }
end

dep 'git-up.gem'

dep 'git-sweep.pip'

dep 'git-run.npm'

dep 'git-stats.npm'

# TODO add to git config: git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX --pattern '^(Date|added|deleted|modified): '"
dep 'diff-so-fancy.npm'

def all_hooks
  '~/.git_global/template/hooks/'.p.children
end
