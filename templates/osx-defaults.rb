meta :osx_defaults do
  accepts_value_for :domain
  accepts_value_for :key
  accepts_value_for :type
  accepts_value_for :value

  template do
    met? {
      status = shell? "defaults read #{domain} #{key}".strip
      mapped_value = value

      if type == 'bool'
        lookup_table = {'true' => '1', 'false' => '0', '1' => '1', '0' => '0'}
        mapped_value = lookup_table[value]
      end

      status == mapped_value
    }

    meet {
      log_shell "Setting config for #{domain} #{key} to #{value} (#{type})", "defaults write #{domain} #{key} -#{type} #{value}"
    }
  end
end

dep "current dir finder scope.osx_defaults" do
  setting "com.apple.finder FXDefaultSearchScope"
  type "string"
  value "SCcf"
end

