return {
  {
    "pixelneo/vim-python-docstring",
    keys = { { "<leader>cc", "<cmd>Docstring<CR>", desc = "add docstring" } },
    ft = "python",
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "flake8",
        "typescript-language-server",
        "python-lsp-server",
        "json-lsp",
        "lua-language-server",
        "prettier",
        "python-lsp-server",
        "rust-analyzer",
        "svelte-language-server",
        "tailwindcss-language-server",
        "typescript-language-server",
      },
    },
  },
  {
    "ThePrimeagen/harpoon",
    keys = {
      {
        "<C-e>",
        function()
          require("harpoon.ui").toggle_quick_menu()
        end,
        desc = "harpoon ui",
      },
      {
        "<C-a>",
        function()
          require("harpoon.mark").add_file()
        end,
        desc = "harpoon add",
      },
      {
        "<C-h>",
        function()
          require("harpoon.ui").nav_file(1)
        end,
        desc = "harpoon 1",
      },
      {
        "<C-j>",
        function()
          require("harpoon.ui").nav_file(2)
        end,
        desc = "harpoon 2",
      },
      {
        "<C-k>",
        function()
          require("harpoon.ui").nav_file(3)
        end,
        desc = "harpoon 3",
      },
      {
        "<C-l>",
        function()
          require("harpoon.ui").nav_file(4)
        end,
        desc = "harpoon 4",
      },
    },
  },
  {
    "mbbill/undotree",
    keys = {
      { "<leader>o", vim.cmd.UndotreeToggle, "UndoTree" },
    },
  },
  {
    "codota/tabnine-nvim",
    build = "./dl_binaries.sh",
    enable = false,
    init = function()
      require("tabnine").setup({
        disable_auto_comment = true,
        -- accept_keymap = "<C-<Enter>>",
        -- dismiss_keymap = "<C-]>",
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
