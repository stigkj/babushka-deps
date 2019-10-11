dep 'Enhanced cd' do
  requires 'enhancd.zplug_plugin'
end

# Next generation cd command with interactive filter
dep 'enhancd.zplug_plugin' do
  requires 'fzy.managed'

  name 'b4b4r07/enhancd'
  tags 'use:init.sh'
end

# TODO look at including fasd too which has some more features
dep 'fasd.managed'

# TODO also look at https://github.com/shyiko/commacd
