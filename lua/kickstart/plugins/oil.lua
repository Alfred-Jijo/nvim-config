return {
  'stevearc/oil.nvim',
  opts = {
    -- Constrain the cursor to the editable parts of the oil buffer
    -- Set to `false` to disable, or "name" to keep it on the file names
    constrain_cursor = "editable",
  },
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },

  config = function(opts)
    require("oil").setup(opts)
    vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
  end,
}
