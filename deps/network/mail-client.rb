# TODO choose mail client
# - Mailspring
# - Mailplane
# - Spark
# - Airmail
# - etc...
dep 'Mail client' do
  requires 'Mailplane'
end

dep 'Mailplane' do
  requires 'mailplane.cask'
end

dep 'Spark' do
  requires 'Spark.mas'
end

dep 'mailplane.cask'

dep 'Spark.mas' do
  id '1176895641'
end
