meta :osx_defaults do
  accepts_value_for :setting
  accepts_value_for :type
  accepts_value_for :value

  template do
    met? {
      status = `defaults read #{setting}`.strip
      status == value
    }
    
    meet {
      shell "defaults write #{setting} -#{type} #{value}"
    }
  end
end

dep "dashboard.osx_defaults" do
  setting "com.apple.dashboard mcx-disabled"
  type "bool"
  value "1"

  after {
    shell "killall Dock"
  }
end

dep "current dir finder scope.osx_defaults" do
  setting "com.apple.finder FXDefaultSearchScope"
  type "string"
  value "SCcf"
end

