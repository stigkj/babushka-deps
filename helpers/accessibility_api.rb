meta :accessibility_api do
  accepts_value_for :application, :basename

  template {
    met? {
      shell(commands_for(select_query(application)), :sudo => true) == '1'
    }
    meet {
      log_shell "Turning on accessibility API for #{application}", commands_for(insert_query(application)), :sudo => true
    }
  }

  def select_query(application)
    %{"select allowed from access where client='#{application}'"}
  end

  def insert_query(application)
    %{"insert or replace into access (service,client,client_type,allowed,prompt_count)
          values ('kTCCServiceAccessibility','#{application}',0,1,1)"}
  end

  def commands_for(query)
    %(sqlite3 #{db_path} #{query})
  end

  def db_path
    %('/Library/Application Support/com.apple.TCC/TCC.db')
  end
end
