-- ~/.config/nvim/lua/user/init.lua

return {
  -- This function is run after AstroNvim has been loaded
  polish = function()
    -- Load user commands and other polish-time customizations
    -- Use pcall so missing files don't break startup
    pcall(require, "user.commands")

    -- Add other polish-time tweaks here if needed
  end,
}

-- :luafile ~/.config/nvim/lua/user/init.lua