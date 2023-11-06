return
{
	'nvim-telescope/telescope.nvim',
	branch = '0.1.x',
	dependencies = {
		'nvim-lua/plenary.nvim',
		{
			'nvim-telescope/telescope-fzf-native.nvim',
			build =
			'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build',
		}
	},
	opts = {
		defaults = {
			mappings = {
				i = {
					['<C-u>'] = false,
					['<C-d>'] = false,
				},
			},
		},
	},

	config = function(_, opts)
		require('telescope').setup(opts)
		local builtin = require('telescope.builtin')
		-- Enable telescope fzf native, if installed
		pcall(require('telescope').load_extension, 'fzf')
		pcall(require('telescope').load_extension, 'harpoon')
		-- See `:help telescope.builtin`
		vim.keymap.set('n', '<leader>?', builtin.oldfiles,
			{ desc = '[?] Find recently opened files' })
		vim.keymap.set('n', '<leader><space>', builtin.buffers,
			{ desc = '[ ] Find existing buffers' })
		vim.keymap.set('n', '<leader>/', function()
			-- You can pass additional configuration to telescope to change theme, layout, etc.
			builtin.current_buffer_fuzzy_find(require('telescope.themes')
				.get_dropdown {
					winblend = 10,
					previewer = false,
				})
		end, { desc = '[/] Fuzzily search in current buffer' })

		vim.keymap.set('n', '<leader>gf', builtin.git_files,
			{ desc = 'Search [G]it [F]iles' })
		vim.keymap.set('n', '<leader>sf', builtin.find_files,
			{ desc = '[S]earch [F]iles' })
		vim.keymap.set('n', '<leader>sh', builtin.help_tags,
			{ desc = '[S]earch [H]elp' })
		vim.keymap.set('n', '<leader>sw', builtin.grep_string,
			{ desc = '[S]earch current [W]ord' })
		vim.keymap.set('n', '<leader>sg', builtin.live_grep,
			{ desc = '[S]earch by [G]rep' })
		vim.keymap.set('n', '<leader>sd', builtin.diagnostics,
			{ desc = '[S]earch [D]iagnostics' })
	end

}
