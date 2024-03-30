return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "debugloop/telescope-undo.nvim",
  },
  config = function()
    require("telescope").setup({
      extensions = {
        undo = {
          -- telescope-undo.nvim config, see below
        },
      },
    })
    require("telescope").load_extension("undo")
    vim.keymap.set("n", "<leader>U", "<cmd>Telescope undo<cr>")
  end,
}
-- return {
--   {
--     "nvim-treesitter/nvim-treesitter",
--     opts = {
--       ensure_installed = {
--         "bash",
--         "html",
--         "javascript",
--         "jsdoc",
--         "json",
--         "lua",
--         "luadoc",
--         "luap",
--         "markdown_inline",
--         "query",
--         "tsx",
--         "typescript",
--       },
--       highlight = { enable = true },
--       indent = { enable = true },
--       incremental_selection = {
--         enable = true,
--         keymaps = {
--           init_selection = "<C-space>",
--           node_incremental = "<C-space>",
--           scope_incremental = false,
--           node_decremental = "<bs>",
--         },
--       },
--       textobjects = {
--         move = {
--           enable = true,
--           goto_next_start = { ["]f"] = "@function.outer", ["]c"] = "@class.outer" },
--           goto_next_end = { ["]F"] = "@function.outer", ["]C"] = "@class.outer" },
--           goto_previous_start = { ["[f"] = "@function.outer", ["[c"] = "@class.outer" },
--           goto_previous_end = { ["[F"] = "@function.outer", ["[C"] = "@class.outer" },
--         },
--       },
--     },
--   },
-- }
--
