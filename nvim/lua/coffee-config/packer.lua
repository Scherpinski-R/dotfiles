vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use("wbthomason/packer.nvim")
    
    -- LSP + completion
    use("neovim/nvim-lspconfig")
    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/cmp-nvim-lua")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/cmp-path")
    use("hrsh7th/cmp-cmdline")
    use("hrsh7th/nvim-cmp")

    --luasnip.
    use("L3MON4D3/LuaSnip")
    use("saadparwaiz1/cmp_luasnip")
    
    use("onsails/lspkind-nvim")

    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'} 
    
    use {
        "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim",
        config = function()
            require("todo-comments").setup {}
        end
    }

    -- ColorSchemes
    use("junegunn/seoul256.vim")
    use("folke/tokyonight.nvim")
    use { "catppuccin/nvim", as = "catppuccin" }
end)
