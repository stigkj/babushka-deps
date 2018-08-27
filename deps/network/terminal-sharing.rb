# Broadcast what you do at the terminal
dep 'shellshare.managed'

# Quick and easy terminal sharing
dep 'termshare.managed'

# Share the terminal via ssh or https
dep 'teleconsole.managed'

# Share the terminal as a web application
dep 'gotty' do
  requires 'go-lang'

  met? { in_path? 'gotty' }
  meet {
    log_shell "Installing gotty from source @#{gotty_url}",
              "go get #{gotty_url}"
  }

  def gotty_url
    'github.com/yudai/gotty'
  end
end
