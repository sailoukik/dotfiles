# ⚡ Thor God of Thunder - Hyprland Dotfiles

> *"Whosoever holds this hammer, if he be worthy, shall possess the power of Thor."*

A modern, high-performance, and immersive Linux desktop environment built on **Hyprland** with native **Lua configuration**, dynamic Asgardian & electric lightning aesthetics, custom auditory feedback, and Norse runic detailing.

---

## 🌩️ Showcase & Key Features

* **⚡ Pure Lua Hyprland Stack**: Modular configuration organized into category files (`monitors`, `autostart`, `look_and_feel`, `animations`, `keybinds`).
* **🌀 Rotating Electric Borders**: 3-stage animated gradient (`Asgard Gold #FFD700`, `Electric Cyan #00E5FF`, `Thunder Blue #1E3A5F`) revolving around active windows.
* **🔨 Thunder-Strike Animation Physics**: Spring pop-in curves with realistic mechanical settle inspired by Mjölnir hitting an anvil.
* **🌌 Post-Processing Screen Shader**: Custom GLSL shader (`thor_vibrance.frag`) boosting electric blue saturation and storm vignette, toggleable via hotkey.
* **🔊 Auditory Feedback**: Synthesized tactile audio feedback—static electric discharge on screenshots, and heavy Mjölnir metallic impact upon locking the session.
* **🎵 Electric CAVA Audio Visualizer**: 8-stage color gradient transforming audio frequencies into electric lightning pulses.
* **ᚦ Elder Futhark Runic Prompt**: Custom Starship prompt utilizing Norse runes (`ᚦ` Thurisaz, `ᛋ` Sowilo, `ᚱ` Raido) for path, status, and username symbols.
* **🛡️ Fastfetch Asgard Edition**: Minimalist ASCII Mjölnir emblem with comprehensive system metrics.
* **🔒 Bifrost Lockscreen (`hyprlock`)**: Heavy gaussian blurred backdrop, golden runic clock, and glowing dual-color input field with worthy/unworthy challenge dialogues.

---

## 🎨 Color Palette

| Color | Hex | Role |
| :--- | :--- | :--- |
| **Asgard Gold** | `#FFD700` | Primary accent, focused highlights, runic clock |
| **Electric Cyan** | `#00E5FF` | Lightning arcs, secondary borders, prompt accents |
| **Thunder Blue** | `#1E3A5F` | Active window gradient base, container headers |
| **Midnight Storm** | `#0B0E14` | Dark background surfaces and input containers |
| **Mjölnir Silver** | `#A2B2C8` | Inactive borders, secondary typography, dividers |

---

## ⌨️ Keybindings

| Keybinding | Action |
| :--- | :--- |
| `Super + Return` | Launch Kitty Terminal |
| `Super + W` | Launch Brave Browser |
| `Super + E` | Launch Thunar File Manager |
| `Super + R` | Application Launcher (Rofi) |
| `Super + .` | Emoji Picker (`rofimoji`) |
| `Super + Q` | Close Active Window |
| `Super + F` | Fullscreen Window |
| `Super + D` | Maximize Window |
| `Super + 1` - `0` | Switch Workspace 1-10 |
| `Super + Alt + 1` - `0` | Move Active Window to Workspace |
| `Super + Ctrl + Arrows` | Resize Active Window |
| `Print` | Snip Screenshot to Clipboard *(+ Electric Snap Sound)* |
| `Super + Print` | Save Screenshot Area to `~/Pictures/Screenshots` |
| `Super + L` | Lock Screen with Hyprlock *(+ Mjölnir Strike Sound)* |
| `Super + Shift + S` | Toggle Thor Atmospheric Screen Shader |

---

## 🚀 Installation

### 1. Clone the repository
```bash
git clone https://github.com/sailoukik/dotfiles.git ~/dotfiles
cd ~/dotfiles
```

### 2. Deploy Symlinks
Run the automated installer script:
```bash
chmod +x install.sh
./install.sh
```

The script automatically backs up any existing configuration files before linking. Once linked, changes made in `~/.config` will immediately reflect in your git repository.

---

## 📂 Repository Structure

```
~/dotfiles/
├── install.sh              # Asgardian symlink manager
├── README.md               # Documentation & keybinding guide
├── LICENSE                 # MIT License
├── hypr/                   # Hyprland ecosystem
│   ├── hyprland.lua        # Master entrypoint loader
│   ├── hyprlock.conf       # Thor Bifrost lockscreen
│   ├── hypridle.conf       # Idle management
│   ├── modules/            # Modular lua configuration
│   │   ├── monitors.lua
│   │   ├── autostart.lua
│   │   ├── look_and_feel.lua
│   │   ├── animations.lua
│   │   └── keybinds.lua
│   ├── shaders/            # GLSL screen shaders
│   ├── scripts/            # Helper scripts (screenshot, shader, lock)
│   ├── sounds/             # Synthesized WAV audio effects
│   └── wallpapers/         # Desktop backgrounds
├── kitty/                  # Kitty terminal configuration
├── waybar/                 # Waybar status bar config & style
├── cava/                   # CAVA audio visualizer
├── fastfetch/              # System fetch config & ASCII art
└── starship/               # Starship prompt configuration
```
