dep 'JSON tools' do
  requires 'jq.managed',
           'jid',
           'gron.managed'
end

# A lightweight and flexibl e command-line JSON processor
dep 'jq.managed'

# An interactive jq
dep 'jid' do
  requires 'homebrew tap'.with('simeji/jid')
  requires 'jid.managed'
end

# "Flattens" json to make it easily searchable with grep, etc.
dep 'gron.managed'

# TODO install xml2json converter: https://github.com/hidu/xml2json
dep 'xml2json.go'
