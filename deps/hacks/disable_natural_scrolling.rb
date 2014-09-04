# TODO must login and out, it seems. But doing it through the preference panel this is not needed.
dep "Disable iPhone-style 'natural' scrolling.osx_defaults" do
  domain 'NSGlobalDomain'
  key 'com.apple.swipescrolldirection'
  type 'bool'
  value 'false'
end
