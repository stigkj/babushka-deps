# Stats collector for Docker layers
dep 'dlayer' do
  requires 'Docker',
           'go-lang'

  met? { in_path? 'dlayer' }
  meet {
    log_shell "Installing dlayer from source @#{dlayer_url}",
              "go get #{dlayer_url}"
  }

  def dlayer_url
    'github.com/wercker/dlayer'
  end
end
