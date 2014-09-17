dep 'Stay' do
  requires {
    on :osx, 'stay.cask'
    otherwise { unsupported_platform! }
  }
  requires 'Allow Stay to use the Accessibility API'
end

dep 'stay.cask', :for => :osx

dep 'Allow Stay to use the Accessibility API' do
  met? {
    shell(commands_for(select_query), :sudo => true) == '1'
  }
  meet {
    log_shell 'Turning on accessibility API for Stay', commands_for(insert_query), :sudo => true
  }
end

def commands_for(query)
  %(sqlite3 #{db_path} #{query})
end

def db_path
  "'/Library/Application Support/com.apple.TCC/TCC.db'"
end

def select_query
  %{"select allowed from access where client='com.cordlessdog.Stay'"}
end

def insert_query
  %{"insert or replace into access (service,client,client_type,allowed,prompt_count)
        values ('kTCCServiceAccessibility','com.cordlessdog.Stay',0,1,1)"}
end
