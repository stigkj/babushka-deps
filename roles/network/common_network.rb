dep 'common network' do
  # TODO set into Network dir
  requires 'GoogleChrome',
           'ngrok.managed',
           'wget.managed'
end
