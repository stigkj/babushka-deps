# Intelligent search of StackOverflow from the command line
dep 'howdoi' do
  requires 'howdoi.pip',
           'howdoi.shell_config'
end

dep 'howdoi.pip'

dep 'howdoi.shell_config' do
  must_include 'HOWDOI_COLORIZE'
  content_to_append howdoi_shell_config

end

def howdoi_shell_config
  <<-EOF.unindent
    # Inserted by howdoi dependency in Babushka
    export HOWDOI_COLORIZE=true
  EOF
end
