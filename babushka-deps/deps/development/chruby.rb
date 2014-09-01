dep "chruby.managed" do
  # This is because Babushka doesn't understand chruby because it's an expored
  # bash function.
  met? {
    "~/.rubies".p.exists?
  }

  after {
    shell "mkdir ~/.rubies"
  }
end