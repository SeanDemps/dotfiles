return {
	"eandrju/cellular-automaton.nvim",
	'mattn/emmet-vim',
	'ggandor/leap.nvim',
	'folke/zen-mode.nvim',
	'dense-analysis/ale',
	'sindrets/diffview.nvim',
	'nvim-tree/nvim-web-devicons',
	'tpope/vim-unimpaired',
	-- Git related plugins
	'tpope/vim-fugitive',
	'tpope/vim-rhubarb',
	-- Detect tabstop and shiftwidth automatically
	'tpope/vim-sleuth',
	{ 'akinsho/toggleterm.nvim', version = "*", config = true },
	{
		'mbbill/undotree',
		config = function()
			vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
		end
	}
}
