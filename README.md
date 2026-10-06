# Popburst

A colorful, high-contrast [Omarchy](https://omarchy.org/) theme tuned to warm floral foliage (wallhaven [8g8kmo](https://wallhaven.cc/w/8g8kmo)): deep leaf charcoal, burnt amber accents, soft gold and coral. Easy on the eyes, readable in daylight and at night.

## Install (anywhere)

```bash
omarchy theme install https://github.com/bdominguez-chwy/omarchy-popburst-theme
omarchy theme set popburst
```

Pick a wallpaper (floral match is `25-wallhaven-8g8kmo-pane`):

```bash
omarchy theme bg next
# or
omarchy theme bg set ~/.config/omarchy/themes/popburst/backgrounds/25-wallhaven-8g8kmo-pane.png
```

Update later:

```bash
omarchy theme update
omarchy theme set popburst
```

## Wallpapers (SFW, 3440×1440)

Backgrounds are additive — new sets are added, never removed.

**Lanín / trail**
1. Lanín geometry
2. Trail lights
3. Crystal peak
4. Ridge camp

**Deep work / coding**
5. Flow peak
6. Stack ridges
7. Deep work ascent
8. Monitor glow trail

**Crystal windows / green zen** (additive)
9. Emerald crystal peak
10. Crystal pane grove
11. Glass ridge zen
12. Moss Lanín geometry
13. Verdant flow peak
14. Crystal window glow
15. Emerald facet window
16. Soft pane glare
17. Matte window mist
18. Haze glass ridge
19. Glare soft crystals

**Colorful day/night** (additive)
20. Prism window spectrum
21. Soft rainbow facets
22. Day-night crystal pane
23. Colorful crystal windows

**Wallhaven floral** (additive)
24. Wallhaven 8g8kmo cover
25. Wallhaven 8g8kmo pane
26. Wallhaven 8g8kmo original

## Full extras (rainbow borders + tuned Neovim)

Git-installed themes regenerate Lua/terminal configs from `colors.toml`. To keep the hand-tuned extras:

```bash
rm -rf ~/.config/omarchy/themes/popburst/.git
omarchy theme set popburst
```

## License

Use freely on your Omarchy machines.
