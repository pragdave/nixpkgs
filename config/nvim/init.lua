require('settings')

-- Map leader to space
vim.g.mapleader = ' '

require('keymappings')

-- Auto install packer.nvim 
require('packer-install')
--

-- install plugins
require('plugins')

-- all the lsp goodness
require('lsp')

-- and configure individual plugins
--require('plugins/airline')
require('plugins/colorscheme')
require('plugins/cmp')
-- require('plugins/compe')
--
require('plugins/easyalign')
require('plugins/markdown')
require('plugins/telescope')
require('plugins/treesitter')

-- Exiting popupmenu
vim.cmd([[inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"]])

--" allow focus events in from tmux
vim.g.diminactive_enable_focus = 1

-- allows auto-indenting depending on file type
vim.cmd([[filetype plugin indent on]])      
require('plugins/lualine')

