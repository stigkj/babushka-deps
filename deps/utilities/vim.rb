dep 'vim' do
  requires 'vim.managed',
           'vimr.cask',
           'vim-plug'
end

dep 'vim.managed'

# Nice VIM/Neovim experience in OS X
dep 'vimr.cask'

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
