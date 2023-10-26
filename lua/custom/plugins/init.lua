-- You can add your own plugins here or in other files in this directory!
-- I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
-- vim.api.nvim_create_autocmd('BufWritePre', {pattern = '*.ts,*.js,*.html,*.scss,*.css,*.md', command = 'Prettier'})
-- vim.api.nvim_create_autocmd('BufWritePre', {pattern = '*.ts,*.js,*.html,*.scss,*.css,*.md', command = 'Neoformat'})


-- local easypick = require("easypick")
--
-- local base_branch = "master"
--
-- easypick.setup({
-- pickers = {
-- -- add your custom pickers here
-- -- below you can find some examples of what those can look like
--
-- -- list files inside current folder with default previewer
-- {
-- -- name for your custom picker, that can be invoked using :Easypick <name> (supports tab completion)
-- name = "ls",
-- -- the command to execute, output has to be a list of plain text entries
-- command = "ls",
-- -- specify your custom previwer, or use one of the easypick.previewers
-- previewer = easypick.previewers.default()
-- },
--
-- -- diff current branch with base_branch and show files that changed with respective diffs in preview
-- {
-- name = "changed_files",
-- command = "git diff --name-only $(git merge-base HEAD " .. base_branch .. " )",
-- previewer = easypick.previewers.branch_diff({base_branch = base_branch})
-- },
--
-- -- list files that have conflicts with diffs in preview
-- {
-- name = "conflicts",
-- command = "git diff --name-only --diff-filter=U --relative",
-- previewer = easypick.previewers.file_diff()
-- },
-- }
-- })

vim.g.ale_fixers = {
javascript = { 'prettier' },
html = { 'prettier' },
css = { 'prettier' },
typescript = { 'prettier' },
scss = { 'prettier' },
markdown = { 'prettier' }
};

vim.g.ale_fix_on_save = 1;

-- vim.api.nvim_create_autocmd('BufWritePre', { pattern = '*.ts,*.js', command = 'OrganizeImports'})

return {
'prettier/vim-prettier',
'axkirillov/easypick.nvim',
'mattn/emmet-vim',
'ggandor/leap.nvim',
'folke/zen-mode.nvim',
'dense-analysis/ale',
'sindrets/diffview.nvim',
'nvim-tree/nvim-web-devicons',
'tpope/vim-unimpaired',
{
'rebelot/kanagawa.nvim',
priority = 1001,
config = function()
vim.cmd.colorscheme 'kanagawa'
end,
},
 {'akinsho/toggleterm.nvim', version = "*", config = true}
}