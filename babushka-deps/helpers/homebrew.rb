dep 'my_forked_homebrew' do
  requires 'binary.my_forked_homebrew', 'build tools'
end

dep 'binary.my_forked_homebrew' do
  requires 'repo.setup_upstream_in_my_forked_homebrew'
  met? { in_path? 'brew' }
  meet { log_shell "Resetting to HEAD", "git reset --hard", :cd => path }
end

dep 'repo.setup_upstream_in_my_forked_homebrew' do
  requires 'repo.my_forked_homebrew'
  met? { repo.repo_shell('git remote').include? 'upstream' }
  meet { 
  	repo.repo_shell 'git remote add upstream https://github.com/Homebrew/homebrew.git' do
  		log 'Adding main Homebrew repo as upstream'
  	end
  }
end

dep 'repo.my_forked_homebrew' do
  requires_when_unmet 'writable.fhs'.with(path), 'git'
  met? {
    if repo.exists? && !repo.include?('29d85578e75170a6c0eaebda4d701b46f1acf446')
      unmeetable! "There is a non-homebrew repo at #{path}."
    else
      repo.exists?
    end
  }
  meet {
    git "https://github.com/stigkj/homebrew.git" do
      log_shell "Gitifying #{path}", "cp -r .git '#{path}'"
    end
  }
end

def path
  Babushka::BrewHelper.present? ? Babushka::BrewHelper.prefix : '/usr/local'
end

def repo
  Babushka::GitRepo.new path
end