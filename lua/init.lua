require'FTerm'.setup({
    border = 'double',
    dimensions  = {
        height = 0.9,
        width = 0.9,
    },
})

-- Example keybindings
vim.keymap.set('n', '<F12>', '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set('t', '<F12>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')


-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup()


vim.keymap.set('n', '<Leader>t', ':NvimTreeToggle<CR>', opt)


require('code_runner').setup({
  -- put here the commands by filetype
  filetype = {
  java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
  python = "python3 -u",
  typescript = "deno run",
  rust = "cd $dir && rustc $fileName && $dir/$fileNameWithoutExt",
        cpp = "cd $dir && g++  $fileName -o $fileNameWithoutExt && $fileNameWithoutExt"
 },
})
