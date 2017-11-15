dep 'dev web server' do
  requires 'devd.managed'
end

# TODO need more than devd?
# * slinky (https://github.com/mwylde/slinky)
# * reloadify (https://github.com/alessioalex/reloadify)
# * local-web-server (https://github.com/lwsjs/local-web-server)
dep 'devd.managed'
