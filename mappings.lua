-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    ["<C-s>"] = { ":w!<cr>", desc = "Save File" }, -- change description but the same command
    -- Copilot suggestions panel
    ["<leader>lp"] = { ":Copilot panel<cr>", desc = "Copilot panel" },
    -- Move text up and down
    ["<leader>k"] = { ":m .-2<cr>==", desc = "Move line up" },
    ["<leader>j"] = { ":m .+1<cr>==", desc = "Move line down" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  i = {
    -- Move while insert
    ["<C-h>"] = { "<Left>", desc = "Move left" },
    ["<C-j>"] = { "<Down>", desc = "Move down" },
    ["<C-k>"] = { "<Up>", desc = "Move up" },
    ["<C-l>"] = { "<Right>", desc = "Move right" },
  },
  v = {
    -- Move text up and down in visual mode
    ["<leader>k"] = { ":m '<-2<cr>gv=gv", desc = "Move line up" },
    ["<leader>j"] = { ":m '>+1<cr>gv=gv", desc = "Move line down" },
  },
}
