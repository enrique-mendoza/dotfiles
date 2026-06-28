-- ██████╗ ██╗███╗   ██╗██████╗ ███████╗
-- ██╔══██╗██║████╗  ██║██╔══██╗██╔════╝
-- ██████╔╝██║██╔██╗ ██║██║  ██║███████╗
-- ██╔══██╗██║██║╚██╗██║██║  ██║╚════██║
-- ██████╔╝██║██║ ╚████║██████╔╝███████║
-- ╚═════╝ ╚═╝╚═╝  ╚═══╝╚═════╝ ╚══════╝
-- See: https://wiki.hypr.land/Configuring/Basics/Binds/

-----------------------
---- CONFIGURATION ----
-----------------------

hl.config({
	binds = {
		hide_special_on_workspace_change = true,
	},
})

local mainMod = "SUPER" -- Sets "Windows" key as main modifier.
local ipc = "qs -c noctalia-shell ipc call"

local terminal = "kitty"
local fileManager = "dolphin"
local menu = ipc .. " launcher toggle"
local browser = "zen-browser"

----------------------
---- APPLICATIONS ----
----------------------

hl.bind(mainMod .. " + RETURN", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + W", hl.dsp.exec_cmd(browser))

-- Requires hyprpicker.
hl.bind(mainMod .. " + SHIFT + C", hl.dsp.exec_cmd("pkill hyprpicker || hyprpicker -a"))

---------------------------
---- SYSTEM MANAGEMENT ----
---------------------------

hl.bind(mainMod .. " + COMMA", hl.dsp.exec_cmd(ipc .. " settings toggle"))
hl.bind(mainMod .. " + D", hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + O", hl.dsp.exec_cmd(ipc .. " sessionMenu toggle"))
hl.bind(mainMod .. " + Y", hl.dsp.exec_cmd(ipc .. " wallpaper toggle"))

hl.bind(mainMod .. " + CTRL + N", hl.dsp.exec_cmd(ipc .. " nightLight toggle"))

hl.bind(mainMod .. " + SHIFT + A", hl.dsp.exec_cmd(ipc .. " volume togglePanel"))
hl.bind(mainMod .. " + SHIFT + B", hl.dsp.exec_cmd(ipc .. " bluetooth togglePanel"))
hl.bind(mainMod .. " + SHIFT + N", hl.dsp.exec_cmd(ipc .. " network togglePanel"))

-----------------
---- LAYOUTS ----
-----------------

hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(mainMod .. " + T", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + TAB", hl.dsp.layout("togglesplit"))

hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen({ mode = "maximized" }))
hl.bind(mainMod .. " + CTRL + F", hl.dsp.window.fullscreen_state({ internal = 0, client = 2 }))
hl.bind(mainMod .. " + SHIFT + F", hl.dsp.window.fullscreen({ mode = "fullscreen" }))

-----------------
---- WINDOWS ----
-----------------

hl.bind(mainMod .. " + Q", hl.dsp.window.close()) -- Kill active window.

-- Move focus with mainMod + arrow keys.
hl.bind(mainMod .. " + H", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + J", hl.dsp.focus({ direction = "down" }))
hl.bind(mainMod .. " + K", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + L", hl.dsp.focus({ direction = "right" }))

-- Swap active window with the one next to it with mainMod + SHIFT + vim keys.
hl.bind(mainMod .. " + SHIFT + H", hl.dsp.window.swap({ direction = "l" }))
hl.bind(mainMod .. " + SHIFT + J", hl.dsp.window.swap({ direction = "d" }))
hl.bind(mainMod .. " + SHIFT + K", hl.dsp.window.swap({ direction = "u" }))
hl.bind(mainMod .. " + SHIFT + L", hl.dsp.window.swap({ direction = "r" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging.
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Resize active window.
hl.bind(mainMod .. " + code:20", hl.dsp.window.resize({ x = -100, y = 0, relative = true })) -- Expand window left.
hl.bind(mainMod .. " + code:21", hl.dsp.window.resize({ x = 100, y = 0, relative = true })) -- Shrink window left.
hl.bind(mainMod .. " + SHIFT + code:20", hl.dsp.window.resize({ x = 0, y = -100, relative = true })) -- Shrink window up.
hl.bind(mainMod .. " + SHIFT + code:21", hl.dsp.window.resize({ x = 0, y = 100, relative = true })) -- Expand window down.

hl.bind(mainMod .. " + ALT + code:20", hl.dsp.window.resize({ x = -25, y = 0, relative = true })) -- Expand window left a little.
hl.bind(mainMod .. " + ALT + code:21", hl.dsp.window.resize({ x = 25, y = 0, relative = true })) -- Shrink window left a little.
hl.bind(mainMod .. " + SHIFT + ALT + code:20", hl.dsp.window.resize({ x = 0, y = -25, relative = true })) -- Shrink window up a little.
hl.bind(mainMod .. " + SHIFT + ALT + code:21", hl.dsp.window.resize({ x = 0, y = 25, relative = true })) -- Expand window down a little.

hl.bind(mainMod .. " + CTRL + code:20", hl.dsp.window.resize({ x = -300, y = 0, relative = true })) -- Expand window left a lot.
hl.bind(mainMod .. " + CTRL + code:21", hl.dsp.window.resize({ x = 300, y = 0, relative = true })) -- Shrink window left a lot.
hl.bind(mainMod .. " + CTRL + SHIFT + code:20", hl.dsp.window.resize({ x = 0, y = -300, relative = true })) -- Shrink window up a lot.
hl.bind(mainMod .. " + CTRL + SHIFT + code:21", hl.dsp.window.resize({ x = 0, y = 300, relative = true })) -- Expand window down a lot.

--------------------
---- WORKSPACES ----
--------------------

-- Switch workspaces with mainMod + [0-9].
-- Move active window to a workspace with mainMod + SHIFT + [0-9].
for i = 1, 10 do
	local key = i % 10 -- 10 maps to key 0.
	hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
	hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
	hl.bind(mainMod .. " + CTRL + SHIFT + " .. key, hl.dsp.window.move({ workspace = i, follow = false }))
end

-- Move workspace to specific monitor.
hl.bind(mainMod .. " + SHIFT + ALT + H", hl.dsp.workspace.move({ monitor = "l" }))
hl.bind(mainMod .. " + SHIFT + ALT + J", hl.dsp.workspace.move({ monitor = "d" }))
hl.bind(mainMod .. " + SHIFT + ALT + K", hl.dsp.workspace.move({ monitor = "u" }))
hl.bind(mainMod .. " + SHIFT + ALT + L", hl.dsp.workspace.move({ monitor = "r" }))

-- Special workspace (scratchpad).
hl.bind(mainMod .. " + S", hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- Scroll through existing workspaces with mainMod + scroll.
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

----------------
---- GROUPS ----
----------------

hl.bind(mainMod .. " + G", hl.dsp.group.toggle())
hl.bind(mainMod .. " + ALT + G", hl.dsp.window.move({ out_of_group = true }))

hl.bind(mainMod .. " + ALT + H", hl.dsp.window.move({ into_group = "l" }))
hl.bind(mainMod .. " + ALT + J", hl.dsp.window.move({ into_group = "d" }))
hl.bind(mainMod .. " + ALT + K", hl.dsp.window.move({ into_group = "u" }))
hl.bind(mainMod .. " + ALT + L", hl.dsp.window.move({ into_group = "r" }))

hl.bind(mainMod .. " + ALT + CTRL + H", hl.dsp.group.prev())
hl.bind(mainMod .. " + ALT + CTRL + L", hl.dsp.group.next())

--------------------
---- MULTIMEDIA ----
--------------------

hl.bind(mainMod .. " + U", hl.dsp.exec_cmd(ipc .. " plugin:screen-toolkit toggle"))

-- Screenshots.
hl.bind("Print", hl.dsp.exec_cmd(ipc .. " plugin:screen-toolkit annotate"))
hl.bind(mainMod .. " + Print", hl.dsp.exec_cmd(ipc .. " plugin:screen-toolkit annotateWindow"))

-- Clipboard
hl.bind(mainMod .. " + V", hl.dsp.exec_cmd(ipc .. " launcher clipboard"))

-- Laptop multimedia keys for volume and LCD brightness.
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd(ipc .. " volume increase"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd(ipc .. " volume decrease"), { locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd(ipc .. " volume muteOutput"), { locked = true, repeating = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd(ipc .. " volume muteInput"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd(ipc .. " brightness increase"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd(ipc .. " brightness decrease"), { locked = true, repeating = true })

hl.bind("XF86AudioNext", hl.dsp.exec_cmd(ipc .. " media next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd(ipc .. " media playPause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd(ipc .. " media playPause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd(ipc .. " media previous"), { locked = true })
