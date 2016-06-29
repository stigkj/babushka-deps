meta :write_as_root do
  accepts_value_for :file_name
  accepts_value_for :content

  template {
    met? { file_name.read.include? content }
    meet {
      log_block "Creating #{file_name}" do
        tmp_file.write content
        shell "mv #{tmp_file} #{file_name}", :sudo => true
        shell "chown root:wheel #{file_name}", :sudo => true
        shell "chmod 644 #{file_name}", :sudo => true
      end
    }
  }

  def tmp_file
    '/tmp/root_file_content'.p
  end
end
