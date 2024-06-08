local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{
		import = "ndara.plugins.alpha",
	},
	{
		import = "ndara.plugins.autopairs",
	},
	{
		import = "ndara.plugins.barbecue",
	},
	{
		import = "ndara.plugins.catppuccin",
	},
	{
		import = "ndara.plugins.colorizer",
	},
	{
		import = "ndara.plugins.comment",
	},
	{
		import = "ndara.plugins.cmp",
	},
	{
		import = "ndara.plugins.colorizer",
	},
	{
		import = "ndara.plugins.devicons",
	},
	{
		import = "ndara.plugins.fidget",
	},
	{
		import = "ndara.plugins.illuminate",
	},
	{
		import = "ndara.plugins.lspconfig",
	},
	{
		import = "ndara.plugins.lualine",
	},
	{
		import = "ndara.plugins.mason",
	},
	{
		import = "ndara.plugins.matchup",
	},
	{
		import = "ndara.plugins.nullls",
	},
	{
		import = "ndara.plugins.neotree",
	},
	{
		import = "ndara.plugins.signature",
	},
	{
		import = "ndara.plugins.smart_split",
	},
	{
		import = "ndara.plugins.surround",
	},
	{
		import = "ndara.plugins.telescope",
	},
	{
		import = "ndara.plugins.treesitter",
	},
	{
		import = "ndara.plugins.typescript-tools",
	},
	{
		import = "ndara.plugins.vim_tmux_navigator",
	},
}, {
	defaults = {
		lazy = false,
		version = false,
	},
	checker = {
		enabled = false,
	},
	change_detection = {
		enabled = false,
		notify = false,
	},
	ui = {
		wrap = true,
		icons = {
			cmd = "",
			config = "",
			event = "",
			ft = "פּ",
			init = "",
			import = "",
			keys = "",
			lazy = "",
			loaded = "",
			not_loaded = "",
			plugin = "",
			runtime = "",
			source = "",
			start = "",
			task = "",
			list = { "", "", "", "‒" },
		},
	},
	performance = {
		cache = {
			enabled = true,
		},
		rtp = {
			reset = true,
			disabled_plugins = {
				"2html_plugin",
				"fzf",
				"getscript",
				"getscriptPlugin",
				"gzip",
				"logiPat",
				"matchit",
				"matchparen",
				"netrw",
				"netrwFileHandlers",
				"netrwPlugin",
				"netrwSettings",
				"rrhelper",
				"shada",
				"spellfile",
				"tar",
				"tarPlugin",
				"tohtml",
				"tutor",
				"vimball",
				"vimballPlugin",
				"zip",
				"zipPlugin",
			},
		},
	},
})
