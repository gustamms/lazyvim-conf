return {
  -- Adiciona o nvim-tree como file explorer
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    dependencies = {
      -- "nvim-tree/nvim-web-devicons", -- Ícones bonitos
    },
    config = function()
      require("nvim-tree").setup({
        hijack_cursor = true,
        update_focused_file = {
          enable = true,
          update_cwd = true,
        },
        view = {
          width = 30,
        },
        git = {
          enable = true,
        },
        filters = {
          dotfiles = false, -- <--- Mostra arquivos ocultos (.env, .gitignore, etc)
          custom = {},
        },
      })

      -- Atalho para abrir o NvimTree
      vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle NvimTree" })
    end,
  },
}
