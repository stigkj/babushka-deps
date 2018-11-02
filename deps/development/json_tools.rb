dep 'JSON tools' do
  requires 'jq.managed',
           'jid.managed',
           'gron.managed'
end

# A lightweight and flexibl e command-line JSON processor
dep 'jq.managed'

# An interactive jq
dep 'jid.managed'

# "Flattens" json to make it easily searchable with grep, etc.
dep 'gron.managed'

# TODO install xml2json converter: https://github.com/hidu/xml2json
dep 'xml2json.go'
