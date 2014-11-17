dep 'Turn off Gatekeeper for all applications' do
  met? { !shell? 'spctl --status' }
  meet { log_shell 'Turning off Gatekeeper for all applications', "spctl --master-disable", :sudo => true }
end
