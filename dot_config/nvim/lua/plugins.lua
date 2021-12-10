_ = vim.cmd [[packadd packer.nvim]]
_ = vim.cmd [[packadd vimball]]

local has = function(x)
  return vim.fn.has(x) == 1
end

local executable = function(x)
  return vim.fn.executable(x) == 1
end

return require('packer').startup {
  function(use)

  


  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'lewis6991/impatient.nvim'

  -- Rust support
  use 'neovim/nvim-lspconfig'
  
  -- Completion framework
  -- see https://sharksforarms.dev/posts/neovim-rust/
  use 'hrsh7th/nvim-cmp'

  -- LSP completion source for nvim-cmp
  use 'hrsh7th/cmp-nvim-lsp'

  -- Snippet completion source for nvim-cmp
  use 'hrsh7th/cmp-vsnip'

  -- Other usefull completion sources
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-buffer'

  use 'simrat39/rust-tools.nvim'
  -- Debugging
  use 'mfussenegger/nvim-dap'


  -- 'neoclide/coc.nvim', {'branch': 'release'}
  -- 'rust-lang/rust.vim'
  -- use 'cespare/vim-toml'
  -- use 'dense-analysis/ale'
  -- use 'maximbaz/lightline-ale'

  -- Git
  use 'airblade/vim-gitgutter'                                            -- Show git diff in number column
  use 'jreybert/vimagit'                                                 -- Modal git editing with <leader>g
  use 'tpope/vim-fugitive'                                               -- Git plugin with commands 'G<command>'
  use 'github/copilot.vim'

  -- Python
  use 'ambv/black'                                                       -- Python code formatter
  use 'tweekmonster/django-plus.vim'                                     -- Better django specific support
  use 'vim-python/python-syntax'                                         -- Better syntax highlighting for python
  use 'vimjas/vim-python-pep8-indent'                                    -- More PEP8 compliant python indentation
  -- use 'jpalardy/vim-slime', {'for': 'python'}

  -- Navigation
  use 'farmergreg/vim-lastplace'                                         -- Move cursor to last edit location when reopening
  --use 'terryma/vim-smooth-scroll'
  -- File browser with git indicators
  --use 'preservim/nerdtree'
  --use 'vim-scripts/The-NERD-tree'
  --use 'Xuyuanp/nerdtree-git-plugin'
  use 'ryanoasis/vim-devicons'
  --use 'tiagofumo/vim-nerdtree-syntax-highlight'
  --use 'jistr/vim-nerdtree-tabs'

  -- Status bar
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- use 'itchyny/lightline.vim'

  -- Theme
  use 'morhetz/gruvbox'

  -- Fuzzy finder
  use 'junegunn/fzf'

  -- Tabs
  use 'ap/vim-buftabline'

  -- Telescope file finder / picker
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use { "nvim-telescope/telescope-fzf-native.nvim", run = "make" }


  -- Nicer LSP UI
  use 'glepnir/lspsaga.nvim'

  -- Smooth scrolling
  use 'karb94/neoscroll.nvim'

end,

 config = {
    -- Move to lua dir so impatient.nvim can cache it
    compile_path = vim.fn.stdpath('config')..'/lua/packer_compiled.lua'
  },

}
