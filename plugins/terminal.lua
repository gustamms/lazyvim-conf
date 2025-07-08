return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup({
        size = 20,
        open_mapping = [[<leader>t]],
        hide_numbers = true,
        shade_filetypes = {},
        shade_terminals = true,
        shading_factor = 2,
        start_in_insert = true,
        persist_size = true,
        direction = "float", -- pode usar "vertical", "float"
        close_on_exit = true,
        shell = vim.o.shell,
      })

      -- Opcional: keymap para alternar modo terminal/normal dentro do terminal
      vim.api.nvim_set_keymap("t", "<esc>", [[<C-\><C-n>]], { noremap = true, silent = true })
    end,
  },
}
