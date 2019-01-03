# HTTP debugging and packet capture & analysis utilities (aka tcpdump for HTTP)
dep 'http debugging' do
  requires 'httpflow.managed',
           'charles-beta.cask'
end

# Think this is the best one
dep 'httpflow.managed'

dep 'charles-beta.cask'

dep 'httpry.managed'

