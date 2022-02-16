dep 'dev web server' do
  requires 'devd.managed'
end

# TODO need more than devd?
# Some of these also functions as reverse proxy
# * slinky (https://github.com/mwylde/slinky)
# * reloadify (https://github.com/alessioalex/reloadify)
# * local-web-server (https://github.com/lwsjs/local-web-server)
# * serve (https://github.com/syntaqx/serve)
# * [harp](http://harpjs.com) - static web server with built-in preprocessing (Markdown, LESS, Coffescript, etc)
# * [puer](https://github.com/leeluolee/puer) - web server for development with mocking, etc
# * [servor](https://github.com/lukejacksonn/servor) - a lot in a small package
dep 'devd.managed'
