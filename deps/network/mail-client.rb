# TODO choose mail client
# - Mailspring
# - Mailplane
# - Spark
# - Airmail
# - etc...
dep 'Mail client' do
  requires 'Mailplane',
           'mimestream.cask'
end

dep 'Mailplane' do
  requires 'mailplane.cask'
end

dep 'mimestream.cask'

dep 'Spark' do
  requires 'Spark.mas'
end

dep 'mailplane.cask'

dep 'Spark.mas' do
  id '1176895641'
end
