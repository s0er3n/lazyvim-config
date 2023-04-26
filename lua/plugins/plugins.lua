return {
  {
    "mbbill/undotree",
    init = function()
      vim.keymap.set("n", "<leader>o", vim.cmd.UndotreeToggle)
    end,
  },
  {
    "codota/tabnine-nvim",
    build = "./dl_binaries.sh",
    enable = false,
    init = function()
      require("tabnine").setup({
        disable_auto_comment = true,
        accept_keymap = "<Leader><Enter>",
        dismiss_keymap = "<C-]>",
        debounce_ms = 800,
        suggestion_color = { gui = "#808080", cterm = 244 },
        exclude_filetypes = { "TelescopePrompt" },
      })
    end,
  },

  { "ellisonleao/gruvbox.nvim" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
