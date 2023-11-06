return {
	'prettier/vim-prettier',
	config = function()
		vim.g.ale_fixers = {
			javascript = { 'prettier' },
			html = { 'prettier' },
			css = { 'prettier' },
			typescript = { 'prettier' },
			scss = { 'prettier' },
			markdown = { 'prettier' }
		};

		vim.g.ale_fix_on_save = 1;
	end
}
