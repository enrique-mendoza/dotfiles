-- ███╗   ███╗██╗███████╗ ██████╗
-- ████╗ ████║██║██╔════╝██╔════╝
-- ██╔████╔██║██║███████╗██║
-- ██║╚██╔╝██║██║╚════██║██║
-- ██║ ╚═╝ ██║██║███████║╚██████╗
-- ╚═╝     ╚═╝╚═╝╚══════╝ ╚═════╝
-- See: https://wiki.hypr.land/Configuring/Basics/Variables/#misc

hl.config({
	misc = {
		anr_missed_pings = 3,
		disable_hyprland_logo = true,
		disable_splash_rendering = true,
		disable_scale_notification = true,
		enable_swallow = true,
		focus_on_activate = true,
		force_default_wallpaper = -1,
		key_press_enables_dpms = true,
		mouse_move_enables_dpms = true,
		on_focus_under_fullscreen = 1,
		swallow_regex = "(kitty|ghostty|[Kk]onsole|Alacritty|gnome-terminal|xfce[0-9]?-terminal)",
		vrr = 3,
	},
})
