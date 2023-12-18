vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- Maps <leader>pv to the :Explore command in normal mode, which opens a file explorer.
vim.keymap.set("n", "<leader>pv", vim.cmd.Explore)

-- Remaps the 'J' key in normal mode to join lines without moving the cursor.
vim.keymap.set("n", "J", "mzJ`z")

-- Remaps Ctrl-d in normal mode to scroll down half a page and center the cursor line in the window.
vim.keymap.set("n", "<C-d>", "<C-d>zz")

-- Remaps Ctrl-u in normal mode to scroll up half a page and center the cursor line in the window.
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Remaps 'n' in normal mode to repeat the last search and center the found match in the window.
vim.keymap.set("n", "n", "nzzzv")

-- Remaps 'N' in normal mode to repeat the last search in the opposite direction and center the found match in the window.
vim.keymap.set("n", "N", "Nzzzv")

-- Maps <leader>p in visual mode to delete the selection without yanking and paste the contents of the unnamed register.
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Maps <leader>y in normal and visual modes to yank the selection into the system clipboard.
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])

-- Maps <leader>Y in normal mode to yank the entire line into the system clipboard.
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Maps <leader>s in normal mode to initiate a search and replace for the word under the cursor.
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Binds the "<leader>h" key sequence in normal mode to clear the search highlighting in the buffer.
-- "<leader>" is a placeholder for a user-defined leader key, commonly used for custom shortcuts.
-- ":nohlsearch<CR>" is the command to turn off the current search highlighting.
-- This is useful when you have finished searching and want to clear the highlighted search results.
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")
