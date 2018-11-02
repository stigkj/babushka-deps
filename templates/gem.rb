# Installs a Ruby Gem
meta :gem do
  template do
    requires 'ruby.asdf'

    met? { in_path? basename }
    meet {
      log_shell "Installing #{basename}",
                "gem install #{basename}"
    }
  end
end

dep 'ruby.asdf' do
  version '2.5.3'
end
