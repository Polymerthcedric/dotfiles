-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Save, compile, and run C code in a split terminal on F5 (robust version)
vim.keymap.set("n", "<F5>", function()
  if vim.bo.filetype == "c" then
    vim.cmd("write")
    -- Get absolute path to the file and the binary path
    local file_path = vim.fn.expand("%:p")
    local binary_path = vim.fn.expand("%:p:r")
    
    -- Escape them for shell safety
    local escaped_file = vim.fn.shellescape(file_path)
    local escaped_binary = vim.fn.shellescape(binary_path)
    
    vim.cmd("split | term gcc " .. escaped_file .. " -o " .. escaped_binary .. " && " .. escaped_binary)
  else
    print("Not a C file")
  end
end, { desc = "Compile and Run C file" })
