dep 'http stats' do
  requires 'httping.managed',
           'httpstat.managed'
end

# Like ping but for http requests
dep 'httping.managed'

# Visualize curl statistics for a http request
dep 'httpstat.managed'
