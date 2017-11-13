dep 'main' do
  requires 'init',
           'common'

  requires {
    on :osx, 'OS X'
    on :linux, 'Linux'
    otherwise { unsupported_platform! }
  }
end
