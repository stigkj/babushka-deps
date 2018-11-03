dep 'git' do
  requires 'git.managed',
           'gitup.cask',
           'sublime-merge.cask',
           'tig.managed',
           'git hooks',
           'git-up',
           'git-run.npm',
           'git-sweep.pip',
           'git-cal.managed',
           'git-stats.npm',
           'diff-so-fancy.managed'
end

dep 'git.managed'

# Nice GUI for git
dep 'gitup.cask'

# Another nice GUI for git
dep 'sublime-merge.cask'

# Nice terminal GUI for git
dep 'tig.managed'

dep 'git hooks' do
  # Need that mackup restore has setup hooks before fixing them below
  requires 'mackup'

  met? {
    all_hooks.all? { |filename| filename.p.executable? }
  }
  meet {
    log_block 'Making all git hooks executable' do
      all_hooks.each { |filename| shell "chmod +x #{filename}" }
    end
  }

  def all_hooks
    '~/.git_global/template/hooks/'.p.children
  end
end

dep 'git-up' do
  requires 'git-up.pip'
end

# Finds when a commit was merged into one or more branches
dep 'git-when-merged.managed'

# Multiple git repositories manager
# TODO check that this alias is set
# alias mgr=/usr/local/bin/gr
dep 'git-run.npm' do
  provides 'gr'
end

dep 'git-up.pip'

dep 'git-sweep.pip'

# View commit calendar for git repo
dep 'git-cal.managed'

# Shows a GitHub-like contributions calendar, but locally, with all your git commits
dep 'git-stats.npm'

# Make the git diff fancier
dep 'diff-so-fancy.managed' do
  after {
    log_shell "Installing #{basename} into git config",
              %(git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX --pattern '^(Date|added|deleted|modified): '")
  }
end
