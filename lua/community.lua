-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  -- import/override with your plugins folder
  { import = "astrocommunity.pack.tailwindcss" },
  { import = "astrocommunity.diagnostics.trouble-nvim" },
  { import = "astrocommunity.utility.hover-nvim" },
  -- { import = "astrocommunity.utility.telescope-live-grep-args-nvim" },
  { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" },
  { import = "astrocommunity.markdown-and-latex.vimtex" },
  { import = "astrocommunity.scrolling.mini-animate" },
  -- spectre
  { import = "astrocommunity.search.nvim-spectre" },
  -- color scheme
  { import = "astrocommunity.colorscheme.nightfox-nvim" },
  -- test
  -- { import = "astrocommunity.colorscheme.kanagawa" },
  -- liver server
  {
    "barrett-ruth/live-server.nvim",
    build = "npm install",
    config = function() require("live-server").setup() end,
  },
}
