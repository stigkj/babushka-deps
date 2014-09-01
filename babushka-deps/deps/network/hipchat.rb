dep 'HipChat' do
  requires {
    on :osx, 'hipchat.cask'
    on :ubuntu, 'hipchat.managed'
    otherwise { unsupported_platform! }
  }
end

dep 'hipchat.cask', :for => :osx

dep 'hipchat.managed', :for => :apt do
  requires_when_unmet {
    on :apt, 'keyed apt source'.with(
        :uri => 'http://downloads.hipchat.com/linux/apt',
        :release => 'stable',
        :repo => 'main',
        :key_sig => '??',
        :key_uri => 'https://www.hipchat.com/keys/hipchat-linux.key'
    )
  }
end

