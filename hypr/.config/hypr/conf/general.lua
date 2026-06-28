--  ██████╗ ███████╗███╗   ██╗███████╗██████╗  █████╗ ██╗
-- ██╔════╝ ██╔════╝████╗  ██║██╔════╝██╔══██╗██╔══██╗██║
-- ██║  ███╗█████╗  ██╔██╗ ██║█████╗  ██████╔╝███████║██║
-- ██║   ██║██╔══╝  ██║╚██╗██║██╔══╝  ██╔══██╗██╔══██║██║
-- ╚██████╔╝███████╗██║ ╚████║███████╗██║  ██║██║  ██║███████╗
--  ╚═════╝ ╚══════╝╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝
-- See: https://wiki.hypr.land/Configuring/Basics/Variables/

local mocha = require("conf.colorschemes.mocha")

hl.config({
	general = {
		gaps_in = 5,
		gaps_out = 15,

		border_size = 2,

		col = {
			active_border = { colors = { mocha.sky, mocha.green }, angle = 45 },
			inactive_border = mocha.overlay0,
		},

		-- Set to true to enable resizing windows by clicking and dragging on borders and gaps.
		resize_on_border = false,

		-- Please see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Tearing/ before you turn this on.
		allow_tearing = false,

		layout = "dwindle",
	},
})
