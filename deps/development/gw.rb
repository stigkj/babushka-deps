# Gradle wrapper that finds the nearest build.gradle
dep 'gw' do
  requires 'go-lang'

  met? { in_path? 'gw' }
  meet {
    log_shell "Installing gw from source @#{gw_url}",
              "go get #{gw_url}"
  }

  def gw_url
    'github.com/srs/gw'
  end
end
