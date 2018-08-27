dep 'http cli' do
  requires 'httpie.managed',
           'http-prompt.pip'
end

# A simple-to-use HTTP command line client
dep 'httpie.managed' do
  provides 'http'
end

# A simple-to-use interactive HTTP command line client
dep 'http-prompt.pip'
