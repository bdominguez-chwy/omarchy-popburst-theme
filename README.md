# Popburst

A poppy, colorful [Omarchy](https://omarchy.org/) theme: deep ink backgrounds, candy-bright accents, and abstract Lanín / trail wallpapers (SFW, ultrawide-ready 3440×1440).

## Install (anywhere)

```bash
omarchy theme install https://github.com/bdominguez-chwy/omarchy-popburst-theme
```

Then pick it anytime with:

```bash
omarchy theme set popburst
omarchy theme bg next   # cycle wallpapers
```

Update later:

```bash
omarchy theme update
```

## What’s included

- `colors.toml` — palette (terminals, shell, Neovim via aether, etc.)
- `backgrounds/` — abstract mountain wallpapers @ 3440×1440
- `icons.theme` — Yaru-magenta
- `chromium.theme` / `keyboard.rgb`
- Optional extras in-repo: `hyprland.lua`, `neovim.lua`, `foot.ini`

## Full extras (rainbow borders + tuned Neovim)

Omarchy regenerates Lua / terminal configs from `colors.toml` for themes installed from git. To apply the hand-tuned extras shipped in this repo:

```bash
# after theme install
rm -rf ~/.config/omarchy/themes/popburst/.git
omarchy theme set popburst
```

That treats Popburst as your own theme copy so `hyprland.lua` / `neovim.lua` / `foot.ini` are used as-is.

## License

Use freely on your Omarchy machines.
