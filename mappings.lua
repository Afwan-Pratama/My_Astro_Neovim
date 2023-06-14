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
    ["L"] = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    ["H"] = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["<leader>r"] = { name = "SearchReplaceSingleBuffer" },
    ["<leader>rs"] = {
      "<CMD>SearchReplaceSingleBufferSelections<CR>",
      desc = "SearchReplaceSingleBuffer [s]elction list",
    },
    ["<leader>ro"] = { "<CMD>SearchReplaceSingleBufferOpen<CR>", desc = "[o]pen" },
    ["<leader>rw"] = { "<CMD>SearchReplaceSingleBufferCWord<CR>", desc = "[w]ord" },
    ["<leader>rW"] = { "<CMD>SearchReplaceSingleBufferCWORD<CR>", desc = "[W]ORD" },
    ["<leader>re"] = { "<CMD>SearchReplaceSingleBufferCExpr<CR>", desc = "[e]xpr" },
    ["<leader>rf"] = { "<CMD>SearchReplaceSingleBufferCFile<CR>", desc = "[f]ile" },
    ["<leader>rb"] = { name = "SearchReplaceMultiBuffer" },
    ["<leader>rbs"] = {
      "<CMD>SearchReplaceMultiBufferSelections<CR>",
      desc = "SearchReplaceMultiBuffer [s]elction list",
    },
    ["<leader>rbo"] = { "<CMD>SearchReplaceMultiBufferOpen<CR>", desc = "[o]pen" },
    ["<leader>rbw"] = { "<CMD>SearchReplaceMultiBufferCWord<CR>", desc = "[w]ord" },
    ["<leader>rbW"] = { "<CMD>SearchReplaceMultiBufferCWORD<CR>", desc = "[W]ORD" },
    ["<leader>rbe"] = { "<CMD>SearchReplaceMultiBufferCExpr<CR>", desc = "[e]xpr" },
    ["<leader>rbf"] = { "<CMD>SearchReplaceMultiBufferCFile<CR>", desc = "[f]ile" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  v = {
    ["<C-r>"] = "<CMD>SearchReplaceSingleBufferVisualSelection<CR>",
    ["<C-s>"] = "<CMD>SearchReplaceWithinVisualSelection<CR>]]",
    ["<C-b>"] = "<CMD>SearchReplaceWithinVisualSelectionCWord<CR>]]",
  },
}
