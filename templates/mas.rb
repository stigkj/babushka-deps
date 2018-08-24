# Installs app from the Mac App Store
meta :mas do
  accepts_value_for :id

  template do
    requires 'mas.managed'

    met? {
      shell('mas list').include? id
    }
    meet {
      log_shell "Installing #{basename}", "mas install #{id}"
    }
  end
end

# CLI for the Mac App Store
dep 'mas.managed'
