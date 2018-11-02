# Intelligent search of StackOverflow from the command line
dep 'howdoi' do
  requires 'howdoi.pip',
           'howdoi.shell_config_ext'
end

dep 'howdoi.pip'

dep 'howdoi.shell_config_ext' do
  content <<-EOF.unindent
      export HOWDOI_COLORIZE=true
    EOF
end
