# TODO use the github integration: babushka stigkj:main (will clone gh/stigkj/babushka-deps and run babushka main)
dep 'main' do
  requires 'common'
  requires {
    on :osx, 'OS X'
    on :linux, 'Linux'
    otherwise { unsupported_platform! }
  }
end