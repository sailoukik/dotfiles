# ⚡ Thor God of Thunder - Hyprland Dotfiles

> *"Whosoever holds this hammer, if he be worthy, shall possess the power of Thor."*

A competition-grade, immersive Linux desktop environment built on **Hyprland** with native **Lua configuration**, dynamic Asgardian & electric lightning aesthetics, tactile auditory feedback, and Norse runic detailing inspired by zacoons' championship rice (*"Rivendell"*).

---

## 🌩️ Showcase & Key Features

* **⚡ Zacoons-Inspired Thunder Terminal Summoning**:
  Launching Kitty (`Super + Return`) triggers a synchronized multi-sensory strike:
  * **60ms Lightning Screen Strobe**: Fast GLES 3.0 shader pulse (`lightning_flash.frag`) illuminating the entire desktop in blinding electric white/cyan.
  * **Synthesized Thunderclap Audio**: Atmospheric static ionization crackle transitioning into a deep, rolling sub-bass thunder boom (`thunder_strike.wav`).
  * **Mechanical Hammer-Strike Pop-in**: High-energy spring physics (`stiffness = 1450`, `mass = 0.8`) causing the terminal to explode open with an immediate physical settle.

* **🌀 Rotating Quad-Color Electric Borders**:
  Active windows are framed in a continuously revolving 4-color gradient:
  * **Radiant Asgard Gold** (`#FFD700`)
  * **Electric Lightning Cyan** (`#00F0FF`)
  * **Deep Thunder Blue** (`#1A365D`)
  * **Bifrost Prismatic Violet** (`#9B51E0`)

* **✨ Electric Cyan Shadow Glow & Focus Dimming**:
  Active windows project an electric neon aura (`0x8800E5FF`, 24px range) that blooms smoothly onto the workspace, while inactive windows are subtly dimmed (`dim_strength = 0.08`) so your focused task commands total visual attention.

* **🌌 GLES 3.0 Atmospheric Screen Shader**:
  A modern post-processing screen shader (`thor_vibrance.frag`) that dynamically enhances electric blue midtones, highlights golden luminances, and adds a storm vignette across the display—toggled instantly via `Super + Shift + S`.

* **⚡ Custom Thor Rofi Launcher (`Super + R`)**:
  A floating centered modal with a translucent Midnight Storm container (`#0B0E14E6`), Electric Cyan perimeter border, Asgard Gold `⚡ Realm` prompt badge, and Mjölnir-styled selection pills.

* **🐱 Handcrafted Thor Kitty Terminal Theme**:
  Standalone `thor_theme.conf` featuring Asgard gold active tabs, electric cyan beam cursor, and high-contrast Norse terminal color palette.

* **🔊 Complete Tactile Audio Feedback**:
  Synthesized 44.1kHz sound effects wired into core desktop interactions:
  * **`thunder_strike.wav`**: Terminal launch strike.
  * **`electric_snap.wav`**: High-frequency discharge on screenshots.
  * **`mjolnir_strike.wav`**: Heavy metallic hammer strike on session lock.

* **🎵 8-Stage Electric CAVA Visualizer**:
  Transforms system audio frequencies into jumping electrical frequency arcs from Midnight Storm (`#0B0E14`) up to Asgard Gold (`#FFD700`).

* **ᚦ Elder Futhark Norse Starship Prompt & Fastfetch Mjölnir ASCII**:
  Prompt utilizing authentic runes (`ᚦ` Thurisaz for user might, `ᛋ` Sowilo for lightning execution status, `ᚱ` Raido for path journey) alongside a minimalist ASCII Mjölnir system spec card.

* **🔒 Bifrost Lockscreen (`hyprlock`)**:
  Heavy Gaussian-blurred storm backdrop, golden runic clock, and glowing dual-gradient input field with authentic worthiness dialogues.

---

## 🎨 Color Palette

| Color | Hex | Role |
| :--- | :--- | :--- |
| **Asgard Gold** | `#FFD700` | Primary accent, focused highlights, runic clock, prompt badges |
| **Electric Cyan** | `#00F0FF` | Lightning arcs, secondary borders, glowing window aura, cursor |
| **Thunder Blue** | `#1A365D` | Deep gradient base, selection containers, window headers |
| **Bifrost Violet** | `#9B51E0` | Prismatic gradient transitions and secondary terminal accents |
| **Midnight Storm** | `#0B0E14` | Deep background surfaces, modal containers, and input fields |
| **Mjölnir Silver** | `#A2B2C8` | Inactive borders, secondary typography, and structural dividers |

---

## ⌨️ Keybindings

| Keybinding | Action |
| :--- | :--- |
| `Super + Return` | **Summon Kitty Terminal** *(+ Lightning Flash & Thunder Strike)* |
| `Super + R` | **Summon Realm Launcher (Rofi)** |
| `Super + W` | Launch Brave Browser |
| `Super + E` | Launch Thunar File Manager |
| `Super + .` | Emoji Picker (`rofimoji`) |
| `Super + Q` | Close Active Window |
| `Super + F` | Fullscreen Window (True fullscreen) |
| `Super + D` | Maximize Window |
| `Super + 1` - `0` | Switch Workspace 1-10 |
| `Super + Alt + 1` - `0` | Move Active Window to Workspace |
| `Super + Ctrl + Arrows` | Resize Active Window |
| `Print` | Snip Screenshot to Clipboard *(+ Electric Snap Sound)* |
| `Super + Print` | Save Screenshot Area to `~/Pictures/Screenshots` |
| `Super + L` | Lock Screen with Hyprlock *(+ Mjölnir Strike Sound)* |
| `Super + Shift + S` | Toggle Thor Atmospheric Screen Shader |

---

## 🚀 Installation & Deployment

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

The installer safely creates timestamped backups of any existing configurations before creating pure symlinks into `~/.config/`. Any future changes you make on your desktop immediately reflect in your git repository.

---

## 📂 Repository Structure

```
~/dotfiles/
├── install.sh                  # ⚡ Asgardian Symlink & Stow deployer
├── README.md                   # 📖 Showcase, keybinding reference & docs
├── LICENSE                     # ⚖️ MIT License
├── hypr/                       # 🪟 Hyprland Ecosystem
│   ├── hyprland.lua            # Master entrypoint loader
│   ├── hyprlock.conf           # 🔒 Bifrost Lockscreen
│   ├── hypridle.conf           # 💤 Idle & sleep daemon config
│   ├── modules/                # 🧩 Clean Modular Lua Configuration
│   │   ├── monitors.lua        # Display outputs, 120Hz refresh rate, scaling
│   │   ├── autostart.lua       # Startup daemons (swww, cliphist, mako, polkit)
│   │   ├── look_and_feel.lua   # Quad-color borders, cyan shadows, blur, dimming
│   │   ├── animations.lua      # Spring physics, layer pops, shadow blooms
│   │   └── keybinds.lua        # App launchers, window management, audio triggers
│   ├── shaders/                # 🌌 GLES 3.0 Post-Processing Shaders
│   │   ├── thor_vibrance.frag  # Atmospheric color grading & storm vignette
│   │   └── lightning_flash.frag# High-intensity 60ms thunder strobe
│   ├── scripts/                # 🛠️ Helper Scripts
│   │   ├── launch_kitty.sh     # Terminal summoner (Sound + Flash + Launch)
│   │   ├── thunder_flash.sh    # Lightning strobe controller
│   │   ├── toggle_shader.sh    # Atmospheric shader toggle
│   │   ├── screenshot.sh       # Sound-enhanced screenshot capture
│   │   └── lock.sh             # Mjölnir sound-enhanced session lock
│   ├── sounds/                 # 🔊 Synthesized 44.1kHz Audio Effects
│   │   ├── thunder_strike.wav  # Dual-phase lightning boom & sub-bass rumble
│   │   ├── electric_snap.wav   # Static electric discharge
│   │   └── mjolnir_strike.wav  # Metallic hammer impact chime
│   └── wallpapers/             # 🖼️ Desktop Wallpapers (Thor edition)
├── kitty/                      # 🐱 Kitty Terminal
│   ├── kitty.conf              # Font, padding, keybinds, and kitten search
│   └── thor_theme.conf         # Dedicated Thor color palette & Asgard tabs
├── rofi/                       # ⚡ Rofi Application Launcher
│   └── config.rasi             # Thor Realm theme, centered floating modal
├── waybar/                     # 📊 Waybar Status Bar
│   ├── config.jsonc            # Clean modular layout
│   └── style.css               # Themed styling & borders
├── cava/                       # 🎵 CAVA Audio Visualizer
│   └── config                  # 8-stage electric gradient configuration
├── fastfetch/                  # 🛡️ Fastfetch System Information
│   ├── config.jsonc            # Custom Norse metric layout
│   └── thor_logo.txt           # Minimalist Mjölnir ASCII art
└── starship/                   # ᚦ Starship Shell Prompt
    └── starship.toml           # Elder Futhark runes & electric color pills
```
