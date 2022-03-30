dep 'Database tools' do
  requires 'postgres-unofficial.cask',
           'tableplus.cask'
end

# A full PostgreSQL installation packaged as a standard Mac app
dep 'postgres-unofficial.cask'

# Very nice relational database GUI
dep 'tableplus.cask'

# An macOS preference pane for all local PostgreSQL installations
dep 'postgrespreferencepane.cask'