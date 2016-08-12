dep 'Turn off Gatekeeper for everything' do
  requires 'Turn off Gatekeeper for all applications',
           'Turn off automatic re-enabling of Gatekeeper after 30 days.osx_defaults'
end

dep 'Turn off Gatekeeper for all applications' do
  met? { !shell? 'spctl --status' }
  meet { log_shell 'Turning off Gatekeeper for all applications', "spctl --master-disable", :sudo => true }
end

dep 'Turn off automatic re-enabling of Gatekeeper after 30 days.osx_defaults' do
  domain 'NSGlobalDomain'
  key 'GKAutoRearm'
  type 'bool'
  value 'false'
end
