# IT automation simplified
dep 'Ansible' do
  requires 'ansible.managed',
           'ansible-shell.pip'
end

dep 'ansible.managed'

dep 'ansible-shell.pip' do
  requires 'ansible.managed'
end
