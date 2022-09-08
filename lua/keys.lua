--[[ keys.lua ]]
-- map(mode, sequence, command, options)

local map = vim.api.nvim_set_keymap

-- use jk to exit insert mode
map('i', 'jk', '<esc>', {})

-- File Manager
-- toggle
-- SPC o p - view files
map('n', '<leader>op', ':NvimTreeToggle<CR>', {})
-- SPC o t - open floating terminal
map('n', '<leader>ot', ':FloatermToggle<CR>', {})
-- SPC p f - search for files in git folder
map('n', '<leader>pf', ':Telescope git_files<CR>', {})
-- SPC / - grep in folder
map('n', '<leader>/', ':Telescope live_grep<CR>', {})

-- SPC b b - list buffers
map('n', '<leader>bb', ':Telescope buffers<CR>', {})
-- SPC b d - close buffer
map('n', '<leader>bd', ':bdelete<CR>', {})

-- SPC w d - close window
map('n', '<leader>wd', ':close<CR>', {})
-- SPC w v - split vertical
map('n', '<leader>wv', ':wincmd v<CR>', {})
-- SPC w s - split horizontal
map('n', '<leader>ws', ':wincmd s<CR>', {})
-- SPC w w - next window
map('n', '<leader>ww', ':wincmd w<CR>', {})


-- CoC completion
map("i", "<CR>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], {silent = true, expr = true, noremap = true})
map("n", "<leader>gd", "<Plug>(coc-definition)", {silent = true})
map("n", "<leader>gr", "<Plug>(coc-references)", {silent = true})
