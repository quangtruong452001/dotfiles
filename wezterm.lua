local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.font = wezterm.font("JetBrains Mono")
config.font_size = 14
config.color_scheme = "Catppuccin Mocha"
config.default_prog = {
	"C:/Program Files/Git/bin/bash.exe",
	"--login",
	"-i",
}
config.keys = {
	{
		key = "w",
		mods = "CTRL",
		action = wezterm.action.CloseCurrentPane({ confirm = false }),
	},
}

return config
