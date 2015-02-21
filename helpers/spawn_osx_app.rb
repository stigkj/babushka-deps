dep 'spawn OS X app', :app_path, :for => :osx do
  met? { marker_file.exists? }
  meet {
    Process.spawn "open #{app_path}"
    marker_file.touch
  }

  def marker_file
    fixed_path = app_path.to_s.gsub '/', '_'
    "/tmp/osx_app_#{fixed_path}_started_#{DateTime.now.strftime('%Y_%m_%d')}".p
  end
end