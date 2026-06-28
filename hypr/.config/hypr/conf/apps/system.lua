-- ███████╗██╗   ██╗███████╗████████╗███████╗███╗   ███╗
-- ██╔════╝╚██╗ ██╔╝██╔════╝╚══██╔══╝██╔════╝████╗ ████║
-- ███████╗ ╚████╔╝ ███████╗   ██║   █████╗  ██╔████╔██║
-- ╚════██║  ╚██╔╝  ╚════██║   ██║   ██╔══╝  ██║╚██╔╝██║
-- ███████║   ██║   ███████║   ██║   ███████╗██║ ╚═╝ ██║
-- ╚══════╝   ╚═╝   ╚══════╝   ╚═╝   ╚══════╝╚═╝     ╚═╝

hl.window_rule({
	match = {
		class = "(org.gnome.NautilusPreviewer|org.kde.dolphin|org.gnome.Evince|org.pulseaudio.pavucontrol|com.gabm.satty|imv|mpv|hyprdynamicmonitors|gazelle|wiremix|btop|bluetui)",
	},
	tag = "+floating-window",
})
hl.window_rule({
	match = {
		class = "(xdg-desktop-portal-gtk|sublime_text|DesktopEditors|org.gnome.Nautilus|org.kde.dolphin)",
		title = "^(Open.*Files?|Open [F|f]older.*|Save.*Files?|Save.*As|Save|All Files|.*wants to [open|save].*|[C|c]hoose.*)",
	},
	tag = "+floating-window",
})
hl.window_rule({
	match = { tag = "floating-window" },
	float = true,
	center = true,
	size = { 875, 600 },
})

hl.window_rule({ match = { class = "org.gnome.Calculator" }, float = true })

-- Media/image/video apps should be opaque.
hl.window_rule({
	match = {
		"^(zoom|vlc|mpv|org.kde.kdenlive|com.obsproject.Studio|com.github.PintaProject.Pinta|imv|org.gnome.NautilusPreviewer)$",
	},
	opacity = "1 1",
})

-- Common app-controlled tags.
hl.window_rule({ match = { tag = "pop" }, rounding = 8 })
hl.window_rule({ match = { tag = "noidle" }, idle_inhibit = "always" })
