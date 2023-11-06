vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set('n', '<leader>tt', ':tab split<CR>')
vim.keymap.set('n', '<leader>dd', 'wi<BS>')
vim.keymap.set('n', '+', '<C-a>')
vim.keymap.set('n', '-', '<C-x>')
vim.keymap.set('n', '<leader>ss', ':split<Return><C-w>w')
vim.keymap.set('n', '<leader>sv', ':vsplit<Return><C-w>w')
-- vim.keymap.set('n', '<C-h>', '<C-w><C-h>')
-- vim.keymap.set('n', '<C-j>', '<C-w><C-j>')
-- vim.keymap.set('n', '<C-k>', '<C-w><C-k>')
-- vim.keymap.set('n', '<C-l>', '<C-w><C-l>')
vim.keymap.set('n', '<leader>ll', '<cmd>:Alternative<CR>')
vim.keymap.set('n', '<leader>lp', '<cmd>:set sb<Return>:split<Return>:Alternative<CR><cmd>:set nosb')
vim.keymap.set('n', '<leader>lv', '<cmd>:set spr<Return>:vsplit<Return>:Alternative<CR><cmd>:set nospr')
vim.keymap.set('n', '<leader>lc', '<cmd>:OtherClear<CR>')
vim.keymap.set('n', '<esc><esc>', '<cmd>:Ex<CR>')
vim.keymap.set('n', '<leader>dv', '<cmd>:DiffviewOpen<CR>')
vim.keymap.set('n', '<leader>dc', '<cmd>:DiffviewClose<CR>')
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]])
vim.keymap.set('n', '<leader>z', ':Z<CR>')
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])
vim.keymap.set('n', 'x', '"_x"');

vim.keymap.set('n', '<leader>o', ':OrganizeImports<CR>')
vim.keymap.set('n', '<C-a>', 'gg<S-v>G')

-- buffers
-- vim.api.nvim_set_keymap("n", "tk", ":bnext<enter>", {noremap=false})
-- vim.api.nvim_set_keymap("n", "tj", ":bprev<enter>", {noremap=false})
-- vim.api.nvim_set_keymap("n", "th", ":bfirst<enter>", {noremap=false})
-- vim.api.nvim_set_keymap("n", "tl", ":blast<enter>", {noremap=false})
-- vim.api.nvim_set_keymap("n", "td", ":bdelete<enter>", {noremap=false})

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- Resize window
vim.keymap.set('n', '<C-w><left>', '<C-w><')
vim.keymap.set('n', '<C-w><right>', '<C-w>>')
vim.keymap.set('n', '<C-w><up>', '<C-w>+')
vim.keymap.set('n', '<C-w><down>', '<C-w>-')

vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");
vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/Appdata/Local/nvim/init.lua<CR>");

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
	callback = function()
		vim.highlight.on_yank()
	end,
	group = highlight_group,
	pattern = '*',
})
