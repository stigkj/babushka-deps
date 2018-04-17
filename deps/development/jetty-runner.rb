# Starts a WAR directly by deploying to an internally started jetty container
dep 'Jetty Runner' do
  requires 'jetty-runner.managed'
end

dep 'jetty-runner.managed'
