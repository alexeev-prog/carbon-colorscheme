local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

local installed, lazy = pcall(require, "lazy")
if not installed then
	return
end

lazy.setup({
	-- importing directories
	spec = {
		{ import = "plugins" },
		{ import = "plugins.lsp" },
	},

	-- ui config
	ui = {
		border = "double",
		size = {
			width = 0.8,
			height = 0.8,
		},
	},

	checker = {
		enabled = true,
		notify = false,
	},
	change_detection = {
		notify = false,
	},
})

-- local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
-- if not vim.loop.fs_stat(lazypath) then
-- 	vim.fn.system({
-- 		"git",
-- 		"clone",
-- 		"--filter=blob:none",
-- 		"https://github.com/folke/lazy.nvim.git",
-- 		"--branch=stable",
-- 		lazypath,
-- 	})
-- end
-- vim.opt.rtp:prepend(lazypath)
-- 
-- require("lazy").setup({
-- 	{ "octol/vim-cpp-enhanced-highlight" },
-- 	{ "preservim/nerdcommenter" },
-- 	{ "MetalPhaeton/neo-easy-brackets" },
-- 	{ "alvan/vim-closetag" },
-- 	{ "nvim-treesitter/playground" },
-- 	{ "ellisonleao/gruvbox.nvim" },
-- 	{ "nvimdev/dashboard-nvim" },
-- 	{ "windwp/nvim-ts-autotag" },
-- 	{ "ray-x/go.nvim" },
-- 	{ "ray-x/guihua.lua" },
-- 	{ "lewis6991/gitsigns.nvim" },
-- 	{ "sindrets/diffview.nvim" },
-- 	{ "yamatsum/nvim-cursorline" },
-- 	{ "nvimdev/indentmini.nvim" },
-- 	
-- 	-- { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
-- 	{
-- 	    "mcauley-penney/tidy.nvim",
-- 	    opts = {
-- 	        filetype_exclude = { "markdown", "diff" }
-- 	    },
-- 	    init = function()
-- 	        vim.keymap.set('n', "<leader>te", require("tidy").toggle, {})
-- 	    end
-- 	},
-- 
-- 	{ "echasnovski/mini.indentscope" },
-- 
-- 	{
-- 	  "m4xshen/smartcolumn.nvim",
-- 	  opts = {}
-- 	},
-- 
-- 	{
-- 	    'numToStr/Comment.nvim',
-- 	    opts = {
-- 	        -- add any options here
-- 	    },
-- 	    lazy = false,
-- 	},
-- 
-- 	{ "hrsh7th/cmp-nvim-lsp" },
-- 	{ "hrsh7th/cmp-buffer" },
-- 	{ "hrsh7th/cmp-path" },
-- 	{ "hrsh7th/cmp-cmdline" },
-- 	{ "hrsh7th/nvim-cmp" },
-- 	{ "hrsh7th/cmp-vsnip" },
-- 	{ "hrsh7th/vim-vsnip" },
-- 	{ "hrsh7th/vim-vsnip-integ" },
-- 	{ "rafamadriz/friendly-snippets" },
-- 	{ "hrsh7th/cmp-nvim-lsp-signature-help" },
-- 
-- 	-- Не стоит менять порядок установки следующих 3-ёх плагинов!
-- 	{ "williamboman/mason.nvim" },
-- 	{ "williamboman/mason-lspconfig.nvim" },
-- 	{ "neovim/nvim-lspconfig" },
-- 
-- 	{ "nvim-tree/nvim-web-devicons" },
-- 
-- 	{
-- 		"nvim-lualine/lualine.nvim",
-- 		dependencies = {
-- 			"nvim-tree/nvim-web-devicons"
-- 		},
-- 	},
-- 
-- 	{ "akinsho/toggleterm.nvim", version = "*", config = true },
-- 	{ "HiPhish/rainbow-delimiters.nvim" },
-- 
-- 	{
-- 		"nvim-neo-tree/neo-tree.nvim",
-- 		branch = "v3.x",
-- 		dependencies = {
-- 			"nvim-lua/plenary.nvim",
-- 			"nvim-tree/nvim-web-devicons",
-- 			"MunifTanjim/nui.nvim",
-- 		},
-- 	},
-- 	{ "akinsho/bufferline.nvim", version = "*", dependencies = "nvim-tree/nvim-web-devicons" },
-- 	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
--     { "windwp/nvim-autopairs" },
-- })
