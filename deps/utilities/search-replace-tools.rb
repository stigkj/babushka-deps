dep 'Search & replace tools' do
  requires 'sd.managed',
           'codemod.managed'
end

# An easier to use sed replacemant
dep 'sd.managed'

# Interactive search&replace
dep 'codemod.managed'
