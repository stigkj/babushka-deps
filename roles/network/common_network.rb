dep 'common network' do
  # TODO set into Network dir
  requires 'HipChat',
           'GoogleChrome',
           'ngrok.managed',
           'wget.managed'
end
