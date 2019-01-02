dep 'http benchmarking' do
  requires 'wrk.managed',
           'artillery.npm'
end

# Nice HTTP benchmarking tool
dep 'wrk.managed'

# Nice HTTP++ load testing toolkit
dep 'artillery.npm'

# Another tiny load testing tool
dep 'hey.go' do
  github 'rakyll/hey'
end
