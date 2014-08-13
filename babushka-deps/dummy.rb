dep 'dummy' do
  # TODO install Java versions through something like this:
  # requires 'Java'.with(:version => 8)
  requires 'Java 8'
  requires 'Java 7'
  requires 'IntelliJ IDEA 13'
  requires 'npm & node'
  requires 'HipChat'
  requires {
    on :osx, 'Fix hostname-through-DHCP bug'
  }
end
