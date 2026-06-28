--  ██████╗ ██████╗  ██████╗ ██╗   ██╗██████╗
-- ██╔════╝ ██╔══██╗██╔═══██╗██║   ██║██╔══██╗
-- ██║  ███╗██████╔╝██║   ██║██║   ██║██████╔╝
-- ██║   ██║██╔══██╗██║   ██║██║   ██║██╔═══╝
-- ╚██████╔╝██║  ██║╚██████╔╝╚██████╔╝██║
--  ╚═════╝ ╚═╝  ╚═╝ ╚═════╝  ╚═════╝ ╚═╝
-- See: https://wiki.hypr.land/Configuring/Basics/Variables/#group

local mocha = require("conf.colorschemes.mocha")

hl.config({
	group = {
		col = {
			border_active = { colors = { mocha.sky, mocha.green }, angle = 45 },
			border_inactive = mocha.overlay0,
		},

		groupbar = {
			font_size = 12,
			font_family = "JetBrainsMono Nerd Font",
			font_weight_active = "ultraheavy",
			font_weight_inactive = "normal",
			indicator_height = 0,
			indicator_gap = 5,
			height = 22,
			gaps_in = 5,
			gaps_out = 0,
			text_color = mocha.base,
			text_color_inactive = mocha.text,
			col = {
				active = mocha.green,
				inactive = mocha.surface0,
			},
			gradients = true,
			gradient_rounding = 0,
			gradient_round_only_edges = false,
		},
	},
})
