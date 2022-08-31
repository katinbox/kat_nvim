local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup({ function(use)
  use "wbthomason/packer.nvim"
  use "ellisonleao/gruvbox.nvim"
  -- Statusline
  use {
    "nvim-lualine/lualine.nvim",
    requires = { "kyazdani42/nvim-web-devicons", opt = true }
  }

  use { "lewis6991/impatient.nvim" } -- Optimize
  use { "nathom/filetype.nvim" }

  use "onsails/lspkind-nvim" -- vscode-like pictograms
  use "glepnir/lspsaga.nvim" -- LSP UIs
  use "L3MON4D3/LuaSnip" -- Snippet
  use "hrsh7th/cmp-buffer" -- nvim-buffer  source for neovim's words
  use "hrsh7th/cmp-nvim-lsp" -- nvim-cmp source for neovim's build-in LSP
  use "hrsh7th/cmp-path" -- nvim-cmp source for neovim's build-in LSP
  use { "tzachar/cmp-tabnine", run = "./install.sh" }
  use { "hrsh7th/cmp-nvim-lsp-signature-help" }
  use "hrsh7th/nvim-cmp" -- Completion
  use "neovim/nvim-lspconfig" -- LSP
  use "jose-elias-alvarez/null-ls.nvim" -- Use Neovim as a language server to inject LSP diagnostic, code actin and more via Lua
  use "MunifTanjim/prettier.nvim"
  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"

  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }
  use "windwp/nvim-autopairs"
  use "windwp/nvim-ts-autotag"

  use "nvim-lua/plenary.nvim" -- Common utilities
  use "nvim-telescope/telescope.nvim"
  use "nvim-neo-tree/neo-tree.nvim"
  use "MunifTanjim/nui.nvim" -- Neovim UI Enhancer

  use "dstein64/vim-startuptime"
  use "max397574/better-escape.nvim"

  use {
    "yamatsum/nvim-nonicons",
    requires = { "kyazdani42/nvim-web-devicons" }
  }

  use "akinsho/bufferline.nvim"
  use "norcalli/nvim-colorizer.lua"
  -- Parenthesis highlighting
  use {
    "p00f/nvim-ts-rainbow",
    after = "nvim-treesitter"
  }
  use "karb94/neoscroll.nvim" -- Smooth scrolling

  use "lewis6991/gitsigns.nvim"
  use "dinhhuy258/git.nvim" -- Git blame and browser

  use "rcarriga/nvim-notify"
  use {
    "lukas-reineke/indent-blankline.nvim",
    opt = true,
    setup = function()
      require("utils").on_file_open "indent-blankline.nvim"
    end
  }

  -- Better buffer closing
  use {
    "famiu/bufdelete.nvim",
    cmd = { "Bdelete", "Bwipeout" }
  }
  use "akinsho/toggleterm.nvim"
  use "yamatsum/nvim-cursorline"

  use {
    "numToStr/Comment.nvim",
    module = "Comment",
    keys = { "gc", "gb" },
  }
  -- Context based commenting
  use {
    "JoosepAlviste/nvim-ts-context-commentstring",
    after = "nvim-treesitter"
  }

  use {
    "andymass/vim-matchup",
    after = "nvim-treesitter"
  }

  -- Auto rename tag html
  use "AndrewRadev/tagalong.vim"

  -- Number of result search
  use {
    "kevinhwang91/nvim-hlslens",
    keys = { "/" },
  }

  use {
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  }

  -- Standalone UI for nvim-lsp progress
  use "j-hui/fidget.nvim"

  -- Convert template string
  use "axelvc/template-string.nvim"

end,
  config = {
    display = {
      open_fn = function()
        return require("packer.util").float({ border = "rounded" })
      end
    }
  }
})
