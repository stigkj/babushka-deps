dep 'JSON tools' do
  requires 'jq.managed',
           'jid.managed',
           'gron.managed',
           'jl.managed',
           'jless.managed'
end

# A lightweight and flexibl e command-line JSON processor
dep 'jq.managed'

# An interactive jq
dep 'jid.managed'

# "Flattens" json to make it easily searchable with grep, etc.
dep 'gron.managed'

# Handles structured json logs
dep 'jl.managed' do
  installs 'koenbollen/public/jl'
end

# A command-line JSON viewer designed for reading, exploring, and searching through JSON data
dep 'jless.managed'

# TODO install xml2json converter: https://github.com/hidu/xml2json
dep 'xml2json.go'

# TODO Look at https://github.com/sclevine/yj
