# Tool for simulating network conditions, like when testing how an application behaves when the network is slow
dep 'toxiproxy' do
  requires 'toxiproxy.managed'
end

dep 'toxiproxy.managed' do
  installs 'shopify/shopify/toxiproxy'
end
