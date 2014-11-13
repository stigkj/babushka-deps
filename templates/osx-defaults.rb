meta :osx_defaults do
  accepts_value_for :as_root, false
  accepts_value_for :current_host, false
  accepts_value_for :domain
  accepts_value_for :key
  accepts_value_for :type
  accepts_value_for :value

  template do
    host = current_host ? '-currentHost' : ''

    met? {
      status = shell? "defaults #{host} read #{domain} #{key}".strip
      mapped_value = value

      if type == 'bool'
        lookup_table = {'true' => '1', 'false' => '0', '1' => '1', '0' => '0'}
        mapped_value = lookup_table[value]
      end

      status == mapped_value
    }

    meet {
      log_shell "Setting config #{current_host ? 'on current host ' : ' '}for #{domain} #{key} to #{value} (#{type})",
                "defaults #{host} write #{domain} #{key} -#{type} #{value}",
                :sudo => as_root
    }
  end
end

dep "current dir finder scope.osx_defaults" do
  setting "com.apple.finder FXDefaultSearchScope"
  type "string"
  value "SCcf"
end

