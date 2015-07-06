dep 'go-lang' do
  requires 'go.managed',
           'go.shell_config'

end

dep 'go.managed'

dep 'go.shell_config' do
  requires 'Directory for GOPATH'

  must_include 'GOROOT'
  content_to_append go_shell_config
end

dep 'Directory for GOPATH' do
  met? { go_path.exist? }
  meet {
    log_block 'Creating directory for GOPATH' do
      go_path.p.mkdir
    end
  }
end

def go_shell_config
  <<-EOF.unindent
    # Inserted by go-lang dependency in Babushka
    export GOROOT=/usr/local/opt/go/libexec
    export GOPATH=#{go_path}
    export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
  EOF
end

def go_path
  "#{ENV['HOME']}/go".p
end
