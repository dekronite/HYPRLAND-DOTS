#!/usr/bin/env bash
set -euo pipefail


# this installer targets arch Linux / arch-based systems.

DOTFILES_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
CONFIG_DIR="$HOME/.config"
BACKUP_DIR="$HOME/.config-backup-$(date +%Y%m%d-%H%M%S)"

if [[ $EUID -eq 0 ]]; then
    echo "Do not run this script as root."
    exit 1
fi

if ! command -v pacman >/dev/null 2>&1; then
    echo "This installer currently targets Arch Linux / Arch-based distributions."
    echo "pacman was not found, so nothing was installed."
    exit 1
fi

echo "==> Installing packages..."


PACKAGES=(
    hyprland
    hyprshutdown
    xdg-desktop-portal
    xdg-desktop-portal-hyprland
    polkit
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
    wireplumber
    pipewire
    pipewire-pulse
    dbus
    firefox
    code
)

sudo pacman -Syu --needed "${PACKAGES[@]}"

echo "==> Backing up existing configuration..."

mkdir -p "$CONFIG_DIR"


BACKUP_ITEMS=()

if [[ -d "$DOTFILES_DIR/.config" ]]; then
    while IFS= read -r -d '' item; do
        rel="${item#"$DOTFILES_DIR/.config/"}"
        top="${rel%%/*}"
        [[ -n "$top" ]] && BACKUP_ITEMS+=("$top")
    done < <(find "$DOTFILES_DIR/.config" -mindepth 1 -maxdepth 1 -print0)
fi

if ((${#BACKUP_ITEMS[@]})); then
    mkdir -p "$BACKUP_DIR"
    for item in "${BACKUP_ITEMS[@]}"; do
        if [[ -e "$CONFIG_DIR/$item" ]]; then
            echo "    backing up ~/.config/$item"
            cp -a "$CONFIG_DIR/$item" "$BACKUP_DIR/"
        fi
    done
    echo "Backup created at: $BACKUP_DIR"
fi

echo "==> Installing dotfiles..."

if [[ -d "$DOTFILES_DIR/.config" ]]; then
    cp -a "$DOTFILES_DIR/.config/." "$CONFIG_DIR/"
fi

echo "==> Installing wallpapers..."

if [[ -d "$DOTFILES_DIR/wallpapers" ]]; then
    mkdir -p "$HOME/Pictures/wallpapers"
    cp -a "$DOTFILES_DIR/wallpapers/." "$HOME/Pictures/wallpapers/"
fi


HYPR="$CONFIG_DIR/hypr/hyprland.lua"

if [[ -f "$HYPR" ]]; then
    sed -i "s|/home/safoan|$HOME|g" "$HYPR"
fi

echo "==> Creating common user directories..."
mkdir -p \
    "$HOME/Pictures/Screenshots" \
    "$HOME/Pictures/wallpapers" \
    "$HOME/Videos"

echo "==> Checking the supplied Hyprland config..."

if [[ -f "$HYPR" ]]; then
    echo "Installed: $HYPR"
else
    echo "WARNING: $HYPR was not found."
    echo "Put your hyprland.lua at .config/hypr/hyprland.lua in this repo."
fi

echo
echo "Done."
