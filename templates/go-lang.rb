# Downloads a tool written in Go from github and Builds and installs it
meta :go do
  accepts_value_for :github

  template do
    requires 'golang.asdf'

    met? { in_path? basename }
    meet {
      log_shell "Installing #{basename} from #{github}",
                "go get #{basename}"
      log_shell "Putting #{basename} in $PATH",
                'asdf reshim golang'
    }
  end
end

dep 'golang.asdf' do
  version '1.11.1'
end
