---@module 'hl'
 -- https://github.com/dekronite/HYPRLAND-DOTS
local mainMod = "SUPER"
local terminal = "kitty"
local fileManager = "dolphin"
local menu = "rofi -show drun -theme ~/.config/rofi/launchers/type-1/style-6.rasi"
hl.bind("SUPER" .. " + " .. "P", hl.dsp.window.pseudo())
hl.config({
    general = {
        layout = "dwindle",
    },
})
hl.config({
    misc = {
        vrr = 0,
    },
})
hl.config({
    dwindle = {
        preserve_split = true,
    },
})
hl.bind("SUPER" .. " + " .. "mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind("SUPER" .. " + " .. "mouse:273", hl.dsp.window.resize(), { mouse = true })
hl.config({
    general = {
        resize_on_border = true,
        border_size = 3,
        col = {
            active_border = { colors = { "rgba(ff2020ff)", "rgba(aa0000ff)" }, angle = 45 },
            inactive_border = "rgba(550000aa)",
        },
    },
})
hl.monitor({
    output   = "HDMI-A-1",
    mode     = "1920x1080@180",
    position = "0x0",
    scale    = 1,
})
hl.bind(mainMod .. " + " .. "Q", hl.dsp.exec_cmd("kitty"))
hl.bind(mainMod .. " + " .. "C", hl.dsp.window.close())
hl.bind(mainMod .. " + " .. "M", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch exit"))
hl.bind(mainMod .. " + " .. "E", hl.dsp.exec_cmd("dolphin"))
hl.bind(mainMod .. " + " .. "V", hl.dsp.window.float())
hl.bind(mainMod .. " + " .. "R", hl.dsp.exec_cmd("rofi -show drun -theme ~/.config/rofi/launchers/type-1/style-6.rasi"))
hl.bind(mainMod .. " + " .. "F", hl.dsp.window.fullscreen())
-- True Fullscreen
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "F", hl.dsp.window.fullscreen())
-- Maximized Fullscreen
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "X", hl.dsp.exec_cmd("hyprctl kill"))
hl.bind(mainMod .. " + " .. "P", hl.dsp.exec_cmd("code"))
-- switch workspaces
hl.bind("SUPER" .. " + " .. 1, hl.dsp.focus({ workspace = 1 }))
hl.bind("SUPER" .. " + " .. 2, hl.dsp.focus({ workspace = 2 }))
hl.bind("SUPER" .. " + " .. 3, hl.dsp.focus({ workspace = 3 }))
hl.bind("SUPER" .. " + " .. 4, hl.dsp.focus({ workspace = 4 }))
hl.bind("SUPER" .. " + " .. 5, hl.dsp.focus({ workspace = 5 }))
hl.bind("SUPER" .. " + " .. 6, hl.dsp.focus({ workspace = 6 }))
hl.bind("SUPER" .. " + " .. 7, hl.dsp.focus({ workspace = 7 }))
hl.bind("SUPER" .. " + " .. 8, hl.dsp.focus({ workspace = 8 }))
hl.bind("SUPER" .. " + " .. 9, hl.dsp.focus({ workspace = 9 }))
hl.bind("SUPER" .. " + " .. 0, hl.dsp.focus({ workspace = 10 }))
-- move windows
hl.bind("SUPER + SHIFT" .. " + " .. 1, hl.dsp.window.move({ workspace = 1 }))
hl.bind("SUPER + SHIFT" .. " + " .. 2, hl.dsp.window.move({ workspace = 2 }))
hl.bind("SUPER + SHIFT" .. " + " .. 3, hl.dsp.window.move({ workspace = 3 }))
hl.bind("SUPER + SHIFT" .. " + " .. 4, hl.dsp.window.move({ workspace = 4 }))
hl.bind("SUPER + SHIFT" .. " + " .. 5, hl.dsp.window.move({ workspace = 5 }))
hl.bind("SUPER + SHIFT" .. " + " .. 6, hl.dsp.window.move({ workspace = 6 }))
hl.bind("SUPER + SHIFT" .. " + " .. 7, hl.dsp.window.move({ workspace = 7 }))
hl.bind("SUPER + SHIFT" .. " + " .. 8, hl.dsp.window.move({ workspace = 8 }))
hl.bind("SUPER + SHIFT" .. " + " .. 9, hl.dsp.window.move({ workspace = 9 }))
hl.bind("SUPER + SHIFT" .. " + " .. 0, hl.dsp.window.move({ workspace = 10 }))
-- Volume keys
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1.5 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), { locked = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true })
hl.bind("Home", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true })
-- Move focused window with SUPER + SHIFT + Arrow Keys
hl.bind("SUPER + SHIFT + left", hl.dsp.window.move({ direction = "l" }))
hl.bind("SUPER + SHIFT + right", hl.dsp.window.move({ direction = "r" }))
hl.bind("SUPER + SHIFT + up", hl.dsp.window.move({ direction = "u" }))
hl.bind("SUPER + SHIFT + down", hl.dsp.window.move({ direction = "d" }))
-- META(SUPER) + SHIFT + S -> area screenshot to clipboard
hl.bind("SUPER" .. " + " .. "S", hl.dsp.exec_cmd("grim -g \"$(slurp)\"-| wl-copy"))
-- Select area screenshot -> save file
hl.bind("SUPER + SHIFT" .. " + " .. "S", hl.dsp.exec_cmd("mkdir -p ~/Pictures/Screenshots && grim -g \"$(slurp)\" ~/Pictures/Screenshots/$(date +'%Y-%m-%d_%H-%M-%S').png"))
--full screen reconding
hl.bind("SUPER" .. " + " .. "D", hl.dsp.exec_cmd("bash -c 'pgrep -x wf-recorder >/dev/null && pkill wf-recorder || wf-recorder -f ~/Videos/recording-$(date +%F_%H-%M-%S).mp4 --audio=alsa_output.pci-0000_00_1f.3.analog-stereo.monitor'"))
--slect record
hl.bind("SUPER + SHIFT" .. " + " .. "D", hl.dsp.exec_cmd("bash -c 'pgrep -x wf-recorder >/dev/null && pkill wf-recorder || wf-recorder -g \"$(slurp)\" -f ~/Videos/recording-$(date +%F_%H-%M-%S).mp4 --audio=alsa_output.pci-0000_00_1f.3.analog-stereo.monitor'"))
--full end 
hl.bind("SUPER + ALT" .. " + " .. "D", hl.dsp.exec_cmd("pkill wf-recorder"))
-- SUPER + T -> Firefox
hl.bind("SUPER" .. " + " .. "T", hl.dsp.exec_cmd("firefox"))
hl.config({
    decoration = {
        rounding = 5,
    },
})
hl.config({
    decoration = {
        blur = {
            enabled = true,
            size = 6,
            passes = 3,
            new_optimizations = true,
        },
    },
})
hl.config({
    input = {
        sensitivity = -0.3,
    },
})
-- Autostart
hl.on("hyprland.start", function()
    hl.exec_cmd("waybar")
    hl.exec_cmd("sleep 1 && swaybg -i/home/safoan/Pictures/wallpapers/wallpaper8.jpg -m fill")
    hl.exec_cmd("swaync")
    hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
end)
