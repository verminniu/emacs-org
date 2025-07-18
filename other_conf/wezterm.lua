-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {
    enable_kitty_keyboard = true
}

-- Mocha, -- or Macchiato, Frappe, Latte
function scheme_for_appearance(appearance)
    if appearance:find "Dark" then
        return "Catppuccin Mocha"
    else
        return "Catppuccin Latte"
    end
end

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
    config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- config.color_scheme = "AdventureTime"
config.color_scheme = scheme_for_appearance(wezterm.gui.get_appearance())

-- config.font =
--     wezterm.font_with_fallback {
--     "JetBrainsMono Nerd Font",
--     -- This font has a broader selection of Chinese glyphs than my preferred font
--     "DengXian"
-- }
config.font = wezterm.font_with_fallback({"Maple Mono NF CN"})
-- config.font =
--     wezterm.font_with_fallback {
--     {
--         family = "Cascadia Mono NF",
--         harfbuzz_features = {"zero", "ss01", "cv05"}
--     },
--     {family = "Terminus", weight = "Bold"},
--     "Noto Color Emoji",
--     "LXGW WenKai Mono"
-- }

-- config.keys = {
--     -- disable ctrl-shift-2 for mark in emacs
--     {
--         key = "2",
--         Mods = "SHIFT|CTRL",
--         action = wezterm.action.SendKey({key = "@", mods = "CTRL"})
--     }
-- }

-- and finally, return the configuration to wezterm
return config
