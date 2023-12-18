require("nebula.remap")
require("nebula.set")
-- print("Hello from Nebula")

-- Allows backspacing over everything in insert mode
vim.opt.backspace = '2'

-- Displays incomplete commands in the last line of the screen
vim.opt.showcmd = true

-- Always displays the status line, even if only one window is present
vim.opt.laststatus = 2

-- Automatically writes (saves) the buffer when moving to another buffer or window
vim.opt.autowrite = true

-- Highlights the line where the cursor is located, making it easier to track the cursor's position
vim.opt.cursorline = true

-- Automatically reads the file when it is modified outside of NeoVim
vim.opt.autoread = true

-- Rounds indent to the nearest multiple of 'shiftwidth' when shifting lines
vim.opt.shiftround = true
