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

  --  Collection of common configurations for the Nvim LSP client
  use 'neovim/nvim-lspconfig'
 
  use 'rust-lang/rust.vim'

  -- To enable more of the features of rust-analyzer, such as inlay hints and more!
  use 'simrat39/rust-tools.nvim'

  -- Completion framework
  -- see https://sharksforarms.dev/posts/neovim-rust/
  use 'hrsh7th/nvim-cmp'

  -- LSP completion source for nvim-cmp
  use 'hrsh7th/cmp-nvim-lsp'

  -- Snippet completion source for nvim-cmp
  use 'hrsh7th/cmp-vsnip'

  -- Snippet engine
use 'hrsh7th/vim-vsnip'

  -- Other usefull completion sources
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-buffer'

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
  -- use 'morhetz/gruvbox'
  -- use 'arcticicestudio/nord-vim'
  -- use 'navarasu/onedark.nvim'
  use 'folke/tokyonight.nvim'
 
  -- treesitter information
  use 'nvim-treesitter/playground'

  -- Highlighting
  use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
  }

  -- Fuzzy finder
  use 'junegunn/fzf'

  -- Hydra
  use { 'anuvyklack/hydra.nvim', 
    requires = 'anuvyklack/keymap-layer.nvim' -- needed only for pink hydras
  }

  -- Tabs
  use 'ap/vim-buftabline'

  -- Telescope file finder / picker
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use { "nvim-telescope/telescope-fzf-native.nvim", run = "make" }

  -- File browser
  use {
      'kyazdani42/nvim-tree.lua',
      requires = {
        'kyazdani42/nvim-web-devicons', -- optional, for file icon
      },
--      config = function() require'nvim-tree'.setup {} end
  }
  
-- Nicer LSP UI
  use 'glepnir/lspsaga.nvim'

  -- Smooth scrolling
  use 'karb94/neoscroll.nvim'

  -- Color highlighting
  use 'norcalli/nvim-colorizer.lua'

end,

 config = {
    -- Move to lua dir so impatient.nvim can cache it
    compile_path = vim.fn.stdpath('config')..'/lua/packer_compiled.lua'
  },

}
