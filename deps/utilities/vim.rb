dep 'vim' do
  requires 'vim.managed',
           'neovim.managed',
           'vimr.cask',
           'vim-plug'
end

dep 'vim.managed'

# The Neovim cli
dep 'neovim.managed' do
  provides 'nvim'
end

# Nice VIM/Neovim experience in OS X
dep 'vimr.cask'

dep 'vim-plug' do
  met? { vim_plug_file.exist? }
  meet {
    vim_plug_file.parent.mkdir
    Babushka::Resource.download 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim', vim_plug_file
  }

  def vim_plug_file
    "#{ENV['HOME']}/.vim/autoload/plug.vim".p
  end
end
