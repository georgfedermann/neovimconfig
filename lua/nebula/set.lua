-- lua_ls: globals vim

-- Sets the cursor style for different modes in GUI Vim or Neovim. An empty string means the default terminal cursor will be used.
vim.opt.guicursor = ""

-- Enables line numbers.
vim.opt.number = true
-- Enables relative line numbers, showing the number of lines above or below the cursor.
vim.opt.relativenumber = true

-- Sets the number of spaces that a tab character counts for.
vim.opt.tabstop = 4
-- Sets the number of spaces used for each step of (auto)indent, and for 'softtabstop'.
vim.opt.softtabstop = 4
-- Sets the width for autoindents (like when you press Enter in insert mode).
vim.opt.shiftwidth = 4
-- Converts tabs to spaces.
vim.opt.expandtab = true

-- Enables smart indenting for new lines.
vim.opt.smartindent = true

-- Disables line wrapping.
vim.opt.wrap = false

-- Disables the creation of swap files.
vim.opt.swapfile = false
-- Disables making a backup before overwriting a file.
vim.opt.backup = false
-- Sets the directory where undo files are stored.
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
-- Enables persistent undo, allowing undoing changes after a file is closed and reopened.
vim.opt.undofile = true

-- Disables highlighting of search results.
vim.opt.hlsearch = false
-- Enables incremental search that shows partial matches.
vim.opt.incsearch = true

-- Enables 24-bit RGB color in the TUI.
vim.opt.termguicolors = true

-- Keeps 8 lines visible above and below the cursor at all times, creating a scroll-off.
vim.opt.scrolloff = 8
-- Always displays the sign column.
vim.opt.signcolumn = "yes"
-- Appends '@-@' to 'isfname', which affects how file names are recognized.
vim.opt.isfname:append("@-@")

-- Sets the time Vim waits after a keystroke before triggering the plugin events. Lower value can lead to more responsive UI.
vim.opt.updatetime = 50

-- Highlights column 80, useful for maintaining a maximum line length.
vim.opt.colorcolumn = "80"

-- Creates an auto command for YAML file types to set specific indentation and tab settings.
vim.api.nvim_create_autocmd("FileType", {
    pattern = "yaml",
    callback = function()
        -- The following settings are local to buffers of YAML files:
        vim.opt_local.tabstop = 4
        vim.opt_local.softtabstop = 4
        vim.opt_local.shiftwidth = 4
        vim.opt_local.expandtab = true
        vim.opt_local.smartindent = true
    end,
    group = vim.api.nvim_create_augroup("YamlIndentation", { clear = true }),
})

vim.opt.whichwrap:append("<,>,h,l")
vim.opt.splitbelow = true
vim.opt.splitright = true
