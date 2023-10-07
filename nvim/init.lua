-- GENERAL
require "user.options"
require "user.keymaps"
require "user.plugins"
require "user.autocommands"
require "user.colorscheme"

-- PLUGINS

require "user.autopairs"
require "user.comment"
require "user.impatient"
require "user.surround"
require "user.yanky"
require "user.undotree"

-- Mappings
require "user.whichkey"

-- Terminal
require "user.toggleterm"

-- File Management
-- require "user.nvim-tree"
require "user.neo-tree"
require "user.sessions"

-- Appearance
require "user.bufferline"
require "user.lualine"
require "user.indentline"
require "user.alpha"
require "user.illuminate"

-- Autocomplete
require "user.cmp"

-- LaTeX
require "user.vimtex"

-- Markdown
require "user.autolist"

-- Snippets
require "user.luasnip"

-- Telescope
require "user.telescope"
require "user.dressing"

-- Treesitter
require "user.treesitter"

-- Git
require "user.gitsigns"

if vim.g.neovide then
    vim.o.guifont = "CaskaydiaCove Nerd Font Mono:h17"
    -- Helper function for transparency formatting
    local alpha = function()
        return string.format("%x", math.floor(255 * vim.g.transparency or 0.8))
    end
-- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
    vim.g.neovide_transparency = 0.0
    vim.g.transparency = 0.5
    vim.g.neovide_background_color = "#0f1117" .. alpha()
    vim.g.neovide_refresh_rate = 144
    vim.g.neovide_fullscreen = true
    vim.g.neovide_remember_window_size = true
    -- Allow clipboard copy paste in neovim
    vim.g.neovide_input_use_logo = 1
    vim.api.nvim_set_keymap('', '<C-v>', '+p<CR>', { noremap = true, silent = true})
    vim.api.nvim_set_keymap('!', '<C-v>', '<C-R>+', { noremap = true, silent = true})
    vim.api.nvim_set_keymap('t', '<C-v>', '<C-R>+', { noremap = true, silent = true})
    vim.api.nvim_set_keymap('v', '<C-v>', '<C-R>+', { noremap = true, silent = true})
    vim.g.neovide_theme = 'auto'
    vim.g.neovide_scale_factor = 1.0
    vim.g.neovide_cursor_trail_size = 0.8
    vim.g.neovide_cursor_antialiasing = true
    vim.g.neovide_cursor_animate_in_insert_mode = true
    vim.g.neovide_cursor_animation_length = 0.05

end
