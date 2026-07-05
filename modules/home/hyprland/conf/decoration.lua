-- ██████╗ ███████╗ ██████╗ ██████╗ ██████╗  █████╗ ████████╗██╗ ██████╗ ███╗   ██╗
-- ██╔══██╗██╔════╝██╔════╝██╔═══██╗██╔══██╗██╔══██╗╚══██╔══╝██║██╔═══██╗████╗  ██║
-- ██║  ██║█████╗  ██║     ██║   ██║██████╔╝███████║   ██║   ██║██║   ██║██╔██╗ ██║
-- ██║  ██║██╔══╝  ██║     ██║   ██║██╔══██╗██╔══██║   ██║   ██║██║   ██║██║╚██╗██║
-- ██████╔╝███████╗╚██████╗╚██████╔╝██║  ██║██║  ██║   ██║   ██║╚██████╔╝██║ ╚████║
-- ╚═════╝ ╚══════╝ ╚═════╝ ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝
-- See: https://wiki.hypr.land/Configuring/Basics/Variables/#decoration

hl.config({
	decoration = {
		rounding = 5,
		rounding_power = 2,

		-- Change transparency of focused and unfocused windows.
		active_opacity = 1.0,
		inactive_opacity = 1.0,

		-- See: https://wiki.hypr.land/Configuring/Basics/Variables/#shadow
		shadow = {
			enabled = true,
			range = 4,
			render_power = 3,
			color = "rgba(1a1a1aee)",
		},

		-- See: https://wiki.hypr.land/Configuring/Basics/Variables/#blur
		blur = {
			enabled = true,
			size = 8,
			passes = 2,
			special = true,
			new_optimizations = true,
		},
	},
})
