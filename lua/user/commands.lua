-- ~/.config/nvim/lua/user/commands.lua
-- Short commands for Neovim

-- Live Server
vim.api.nvim_create_user_command("LST", function()
  -- 1) Try plugin module API
  local ok, server = pcall(require, "live-server")
  if ok and server and type(server.toggle) == "function" then
    server.toggle()
    return
  end

  -- 2) Try known commands provided by various live-server plugins
  local cmds = { "LiveServerToggle", "LiveServerStart", "LiveServer" }
  for _, c in ipairs(cmds) do
    local ok_cmd = pcall(vim.cmd, c)
    if ok_cmd then return end
  end

  -- 3) Nothing found
  vim.notify("live-server plugin not available (module or commands not found)", vim.log.levels.WARN)
end, { desc = "Toggle Live Server" })

-- Markdown Preview
vim.api.nvim_create_user_command(
  "MP",
  function() vim.cmd "MarkdownPreviewToggle" end,
  { desc = "Toggle Markdown Preview" }
)

-- Wrap toggle
vim.api.nvim_create_user_command("WR", function()
  vim.o.wrap = not vim.o.wrap
  print("Wrap is now " .. (vim.o.wrap and "ON" or "OFF"))
end, { desc = "Toggle line wrap" })

-- :luafile ~/.config/nvim/lua/user/commands.lua
