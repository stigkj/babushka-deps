# Nice csv tools
dep 'CSV tools' do
  requires 'q.managed',
           'xsv.managed',
           'csvkit.managed'
end

# Use SQL-like queries against tabular text files (CSV, etc)
dep 'q.managed'

# https://github.com/BurntSushi/xsv
dep 'xsv.managed'

# https://github.com/wireservice/csvkit
dep 'csvkit.managed'
