return {
  {
    "AstroNvim/astrocore",
    opts = {
      mappings = {
        -- NORMAL mode
        n = {
          ["<leader>gs"] = {
            function()
              local gitsigns = require "gitsigns"
              gitsigns.stage_buffer()
              vim.notify("Staged current file", vim.log.levels.INFO)
            end,
            desc = "Stage current file",
          },
          ["<C-d>"] = { "<C-d>zz", desc = "Down and centre of the buffer" },
          ["<C-u>"] = { "<C-u>zz", desc = "Up and centre of the buffer" },
          ["n"] = { "nzzzv", desc = "for searching and centering" },
          ["N"] = { "nzzzv", desc = "for searching and centering in the opposite direction" },
          ["<M-Down>"] = { "yyp`]", desc = "Duplicate line down" },
          ["<M-Up>"] = { "yyP`]", desc = "Duplicate line up" },
          ["<Leader>w"] = { "<cmd>w<cr>", desc = "Save file" },
          ["<Leader>x"] = { "<cmd>x<cr>", desc = "Save and quit file" },
          ["<Leader>/"] = { "gcc", desc = "Toggle comment line" },
          ["<Leader>z"] = { "u", desc = "Undo" },
          ["<Leader>d"] = { "dd", desc = "Delete a line" },
          -- ["<leader>mp"] = { "<cmd>MarkdownPreviewToggle<cr>", desc = "Toggle Markdown Preview" },
          ["<leader>lw"] = { "<cmd>set wrap<cr>", desc = "Enable Line Wrap in the Editor" },
          [";"] = { ":", desc = "Mapping : to ;" },
          -- ["<Leader>fg"] = {
          --   "<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<cr>",
          --   desc = "Live grep with args",
          -- },
          ["<Down>"] = { "<Nop>" },
          ["<Up>"] = { "<Nop>" },
          ["<Left>"] = { "<Nop>" },
          ["<Right>"] = { "<Nop>" },
        },
        -- VISUAL mode
        v = {
          ["<M-Down>"] = { "y'>p", desc = "Duplicate selection down" },
          ["<M-Up>"] = { "y'<P", desc = "Duplicate selection up" },
          ["<Leader>w"] = { "<cmd>w<cr>", desc = "Save file" },
          ["<Leader>x"] = { "<cmd>w<cr>", desc = "Save file" },
          ["<Leader>/"] = { "gc", desc = "Toggle comment selection" },
          ["<Leader>z"] = { "<Esc>u", desc = "Undo" },
          ["<Leader>d"] = { "<Esc>dd", desc = "Delete a line" },
          ["<Down>"] = { "<Nop>" },
          ["<Up>"] = { "<Nop>" },
          ["<Left>"] = { "<Nop>" },
          ["<Right>"] = { "<Nop>" },
        },
        -- INSERT mode
        i = {
          ["<Leader>w"] = {
            function()
              vim.cmd "write" -- save without leaving insert mode
            end,
            desc = "Save file",
            noremap = true,
            silent = true,
          },
          ["<Leader>x"] = {
            function()
              vim.cmd "x" -- save and quit without leaving insert mode
            end,
            desc = "Save and quit file",
            noremap = true,
            silent = true,
          },
          ["<Leader>z"] = { "<C-o>u", desc = "Undo" },
          ["<Leader>d"] = { "<C-o>dd", desc = "Delete a line" },
          ["<M-BS>"] = { "<C-w>", desc = "Delete word backwards" },
          ["<Leader>/"] = { "<Esc>gcc<S-a>", desc = "Toggle comment line" },
          ["<Leader><Leader>"] = { "<Esc>", desc = "Escape Insert mode" },
        },
      },
    },
  },
}
