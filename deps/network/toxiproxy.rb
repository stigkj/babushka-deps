# Tool for simulating network conditions, like when testing how an application behaves when the network is slow
dep 'toxiproxy' do
  requires 'homebrew tap'.with('shopify/shopify')
  requires 'toxiproxy.managed'
end
