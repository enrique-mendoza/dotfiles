--  █████╗ ██████╗ ██████╗ ███████╗
-- ██╔══██╗██╔══██╗██╔══██╗██╔════╝
-- ███████║██████╔╝██████╔╝███████╗
-- ██╔══██║██╔═══╝ ██╔═══╝ ╚════██║
-- ██║  ██║██║     ██║     ███████║
-- ╚═╝  ╚═╝╚═╝     ╚═╝     ╚══════╝

local home = os.getenv("HOME") .. "/.config"
local require_all = require("conf.helpers.require_all")

require_all.files(home .. "/hypr/conf/apps", "conf.apps")
