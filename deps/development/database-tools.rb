dep 'Database tools' do
  requires 'postgres.cask',
           'tableplus.cask'
end

# A full PostgreSQL installation packaged as a standard Mac app
dep 'postgres.cask'

# Very nice relational database GUI
dep 'tableplus.cask'
