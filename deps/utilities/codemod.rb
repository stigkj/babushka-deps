# Nice search&replace tool
dep 'codemod' do
  requires 'python.bin'
  installs 'codemod.py'

  met? { in_path? 'codemod' }
  meet {
    log_shell "Installing codemod with pip",
              "pip install #{codemod_url}"
  }

  def codemod_url
    'git+git://github.com/facebook/codemod.git'
  end
end
