from libqtile.config import Screen
from libqtile.log_utils import logger

from core.bar import bar, secondary_bar
from utils import config

import subprocess

screens = [
    Screen(
        wallpaper = config['wallpaper'],
        wallpaper_mode = 'fill',
        top = bar,
    ),
]

xrandr = "xrandr | grep -w 'connected'"

command = subprocess.run(
    xrandr,
    shell=True,
    stdout=subprocess.PIPE,
    stderr=subprocess.PIPE,
)

if command.returncode != 0:
    error = command.stderr.decode("UTF-8")
    logger.error(f"Failed counting monitors using {xrandr}:\n{error}")
    connected_monitors = 1
else:
    # Check the output of the xrandr command, if a monitor is connected
    # but turned off, then it will not show any resolution for that montior.
    xrandr_output = command.stdout.decode("UTF-8").split("\n")[:-1]
    resolutions = map(lambda output: output.split(" ")[2], xrandr_output) 
    connected_monitors = len([r for r in resolutions if not r.startswith("(")])

if connected_monitors == 2:
    screens.append(
        Screen(
            wallpaper = config['wallpaper'],
            wallpaper_mode = 'fill',
            top = secondary_bar,
        )
    )
