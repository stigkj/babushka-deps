# Share the terminal as a web application
dep 'gotty' do
  requires 'go-lang'

  met? { in_path? 'gotty' }
  meet {
    log_shell "Installing gooty from source @#{gotty_url}",
              "go get #{gotty_url}"
  }

  def gotty_url
    'github.com/yudai/gotty'
  end
end
