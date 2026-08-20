<p align="center" style="margin-bottom:10px;margin-top:10px;">
  <a><img src="https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black"></a>
  <a><img src="https://img.shields.io/badge/Hyprland-58E1FF?style=for-the-badge&logo=hyprland&logoColor=black"></a>
</p>

<h2 align="center">
  <b style="font-size:24px;line-height:24px;vertical-align:middle;"><i>hyprland-dots</i></b>
</h2>

<p align="center">
  my hyprland dotfiles.
</p>

<p align="center" style="margin-top:36px">
  <img src="https://img.shields.io/github/stars/dekronite/HYPRLAND-DOTS?color=dd864a&labelColor=202328&style=for-the-badge">
  <img src="https://img.shields.io/github/forks/dekronite/HYPRLAND-DOTS?color=82aaff&labelColor=202328&style=for-the-badge">
  <img src="https://img.shields.io/github/issues/dekronite/HYPRLAND-DOTS?color=bf616a&labelColor=202328&style=for-the-badge">
  <img src="https://img.shields.io/github/issues-pr/dekronite/HYPRLAND-DOTS?color=c792ea&labelColor=202328&style=for-the-badge">
  <img src="https://img.shields.io/github/license/dekronite/HYPRLAND-DOTS?color=15121C&labelColor=202328&style=for-the-badge">
</p>

---

## Installation

clone the repo:

```bash
git clone https://github.com/dekronite/HYPRLAND-DOTS.git
cd HYPRLAND-DOTS
```

make the installer executable:

```bash
chmod +x install.sh
```

run it:

```bash
./install.sh
```

## Prerequisites

this setup is made for arch Linux / arch-based systems.

the following packages are required:

```text
hyprland
kitty
dolphin
rofi
waybar
swaybg
swaync
grim
slurp
wl-clipboard
wf-recorder
firefox
code
pipewire
wireplumber
```

**wpctl** is used for volume and microphone controls.

## Keybinds

**SUPER** = Windows / Meta key

### applications

| Keybind               | Action              |
| --------------------- | ------------------- |
| **SUPER + Q**         | Open Kitty          |
| **SUPER + E**         | Open Dolphin        |
| **SUPER + R**         | Open Rofi           |
| **SUPER + T**         | Open Firefox        |
| **SUPER + P**         | Open VS Code        |
| **SUPER + C**         | Close window        |
| **SUPER + V**         | Toggle floating     |
| **SUPER + F**         | Fullscreen          |
| **SUPER + SHIFT + F** | Fullscreen          |
| **SUPER + M**         | Exit Hyprland       |
| **SUPER + SHIFT + X** | Kill focused window |

### workspaces

| Keybind       | Action       |
| ------------- | ------------ |
| **SUPER + 1** | Workspace 1  |
| **SUPER + 2** | Workspace 2  |
| **SUPER + 3** | Workspace 3  |
| **SUPER + 4** | Workspace 4  |
| **SUPER + 5** | Workspace 5  |
| **SUPER + 6** | Workspace 6  |
| **SUPER + 7** | Workspace 7  |
| **SUPER + 8** | Workspace 8  |
| **SUPER + 9** | Workspace 9  |
| **SUPER + 0** | Workspace 10 |

### move windows

| Keybind               | Action            |
| --------------------- | ----------------- |
| **SUPER + SHIFT + ←** | Move window left  |
| **SUPER + SHIFT + →** | Move window right |
| **SUPER + SHIFT + ↑** | Move window up    |
| **SUPER + SHIFT + ↓** | Move window down  |

### mouse

| Keybind                 | Action        |
| ----------------------- | ------------- |
| **SUPER + Left Click**  | Drag window   |
| **SUPER + Right Click** | Resize window |

### audio

| Key             | Action                 |
| --------------- | ---------------------- |
| **Volume Up**   | Increase volume        |
| **Volume Down** | Decrease volume        |
| **Mute**        | Mute/unmute audio      |
| **Home**        | Mute/unmute microphone |

### screenshots

| Keybind               | Action                          |
| --------------------- | ------------------------------- |
| **SUPER + S**         | Select area and copy screenshot |
| **SUPER + SHIFT + S** | Select area and save screenshot |

screenshots are saved to:

```text
~/Pictures/Screenshots/
```

### screen recording

| Keybind               | Action                          |
| --------------------- | ------------------------------- |
| **SUPER + D**         | Start/stop fullscreen recording |
| **SUPER + SHIFT + D** | Start/stop area recording       |
| **SUPER + ALT + D**   | Stop recording                  |

recordings are saved to:

```text
~/Videos/
```

## license

personal dotfiles feel free to use, modify, and adapt them for your own setup.

