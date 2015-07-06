dep 'Vim' do
  requires 'vim.managed',
           'vim-plug'
end

dep 'vim.managed'

dep 'vim-plug' do
  met? { vim_plug_file.exist? }
  meet {
    vim_plug_file.parent.mkdir
    Babushka::Resource.download 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim', vim_plug_file
  }
end

def vim_plug_file
  "#{ENV['HOME']}/.vim/autoload/plug.vim".p
end
