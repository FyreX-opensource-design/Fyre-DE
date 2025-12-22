# Modern Theme - Matugen Compatible

This theme is designed to work with [matugen](https://github.com/InioX/Matugen), a Material You color scheme generator. According to the [matugen documentation](https://iniox.github.io/#matugen/usage), matugen uses templates to generate themed files.

## Setup with Matugen

1. **Install matugen** (if not already installed):
   ```bash
   # Using cargo
   cargo install matugen
   
   # Or from AUR
   yay -S matugen-bin
   ```

2. **Configure matugen templates**:
   Edit your matugen config file at `~/.config/matugen/config.toml` and add:

   ```toml
   [templates.waybar]
   input_path = '/home/nathan/FyreDE-dotfiles/system/themes/modern/waybar/style.css.template'
   output_path = '/home/nathan/FyreDE-dotfiles/system/themes/modern/waybar/style.css'

   [templates.wofi]
   input_path = '/home/nathan/FyreDE-dotfiles/system/themes/modern/wofi/style.css.template'
   output_path = '/home/nathan/FyreDE-dotfiles/system/themes/modern/wofi/style.css'
   ```

   Adjust the paths to match your actual dotfiles location.

3. **Generate colors from your wallpaper**:
   ```bash
   matugen image /path/to/your/wallpaper
   ```

   Or generate from a color:
   ```bash
   matugen color hex "#ffbf9b" -m dark
   ```

4. **Auto-regenerate on wallpaper change**:
   You can set up a script or systemd service to run `matugen image /path/to/wallpaper` when your wallpaper changes.

## Features

- **Modern Design**: Clean, minimal aesthetic with rounded corners and smooth animations
- **Matugen Integration**: Ready to use with matugen-generated Material You colors
- **Fallback Colors**: Works without matugen using built-in fallback colors
- **Consistent Theming**: Waybar and Wofi share the same color scheme
- **Interactive**: Hover effects, click actions, and smooth transitions

## Usage

Set your environment variables to use this theme:
```bash
export WAYBAR_THEME=/home/nathan/FyreDE-dotfiles/system/themes/modern
export WOFI_THEME=/home/nathan/FyreDE-dotfiles/system/themes/modern
```

Then restart waybar to apply the theme.

