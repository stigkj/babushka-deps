# Packet capture and analysis utility similar to tcpdump for HTTP
dep 'http packet capture' do
  requires 'httpflow.managed'
end

# Think this is the best one
dep 'httpflow.managed'

dep 'httpry.managed'
