local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use "nvim-lua/plenary.nvim"

    -- color schemes
    use "rebelot/kanagawa.nvim"
    use "folke/tokyonight.nvim"
    use "EdenEast/nightfox.nvim"
    use "sainnhe/everforest"
    use "sainnhe/sonokai"
    use "gruvbox-material/gruvbox-material"

    use "christoomey/vim-tmux-navigator"
    use "szw/vim-maximizer"

    use "tpope/vim-surround"
    use "numToStr/Comment.nvim"

    use "nvim-tree/nvim-tree.lua"
    use "kyazdani42/nvim-web-devicons"
    use "nvim-lualine/lualine.nvim"

    use({
        "nvim-telescope/telescope-fzf-native.nvim",
        run = "make"
    })
    use({
        "nvim-telescope/telescope.nvim",
        requires = {{"nvim-lua/popup.nvim"}, {"nvim-lua/plenary.nvim"}},
        branch = "0.1.x"
    })

    -- auto completion
    use "hrsh7th/nvim-cmp"
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/cmp-path"

    use "L3MON4D3/LuaSnip"
    use "saadparwaiz1/cmp_luasnip"
    use "rafamadriz/friendly-snippets"

    -- lsp servers
    use {"williamboman/mason.nvim", "williamboman/mason-lspconfig.nvim", "neovim/nvim-lspconfig"}
    use("hrsh7th/cmp-nvim-lsp") -- for autocompletion
    use({
        "glepnir/lspsaga.nvim",
        branch = "main"
    }) -- enhanced lsp uis
    use("jose-elias-alvarez/typescript.nvim") -- additional functionality for typescript server (e.g. rename file & update imports)
    use("onsails/lspkind.nvim") -- vs-code like icons for autocompletion

    -- formatting & linting
    use("jose-elias-alvarez/null-ls.nvim") -- configure formatters & linters
    use("jayp0521/mason-null-ls.nvim") -- bridges gap b/w mason & null-ls
    use 'mfussenegger/nvimlspconfig.lua-lint'

    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate"
    }

    if packer_bootstrap then
        require('packer').sync()
    end
end)
