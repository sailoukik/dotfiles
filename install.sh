#!/usr/bin/env bash
# ==============================================================================
#  ⚡ THOR THEME DOTFILES INSTALLER & SYMLINK MANAGER
#  Supports GNU Stow with automated fallback to robust symlinks
# ==============================================================================

set -e

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CONFIG_DIR="${XDG_CONFIG_HOME:-$HOME/.config}"
TIMESTAMP="$(date +%Y%m%d_%H%M%S)"

# Colors
GOLD='\033[1;33m'
CYAN='\033[1;36m'
BLUE='\033[1;34m'
GREEN='\033[1;32m'
NC='\033[0m' # No Color

echo -e "${GOLD}"
cat << 'EOF'
     ⚡  THOR DOTFILES - ASGARDIAN SYMLINK MANAGER  ⚡
             .---.---.
            /  .---.  \
           |  / ᚦ \  |
       ____| | MJÖLNIR | |____
      |====|  \ ᛋ /  |====|
       ¯¯¯¯|   '---'   |¯¯¯¯
EOF
echo -e "${NC}"

mkdir -p "$CONFIG_DIR"

link_directory() {
    local src="$1"
    local dest="$2"
    local name="$(basename "$src")"

    if [ -L "$dest" ]; then
        echo -e "${CYAN}→ Symlink already exists:${NC} $dest -> $(readlink "$dest")"
        rm "$dest"
    elif [ -d "$dest" ]; then
        echo -e "${BLUE}ℹ Backing up existing directory:${NC} $dest -> ${dest}.bak_${TIMESTAMP}"
        mv "$dest" "${dest}.bak_${TIMESTAMP}"
    fi

    ln -sfn "$src" "$dest"
    echo -e "${GREEN}✓ Linked:${NC} $dest -> $src"
}

link_file() {
    local src="$1"
    local dest="$2"

    if [ -L "$dest" ]; then
        echo -e "${CYAN}→ Symlink already exists:${NC} $dest"
        rm "$dest"
    elif [ -f "$dest" ]; then
        echo -e "${BLUE}ℹ Backing up existing file:${NC} $dest -> ${dest}.bak_${TIMESTAMP}"
        mv "$dest" "${dest}.bak_${TIMESTAMP}"
    fi

    ln -sfn "$src" "$dest"
    echo -e "${GREEN}✓ Linked:${NC} $dest -> $src"
}

echo -e "${CYAN}Deploying Asgardian configuration modules into ${CONFIG_DIR}...${NC}"

# Directories
link_directory "$DOTFILES_DIR/hypr" "$CONFIG_DIR/hypr"
link_directory "$DOTFILES_DIR/kitty" "$CONFIG_DIR/kitty"
link_directory "$DOTFILES_DIR/waybar" "$CONFIG_DIR/waybar"
link_directory "$DOTFILES_DIR/cava" "$CONFIG_DIR/cava"
link_directory "$DOTFILES_DIR/fastfetch" "$CONFIG_DIR/fastfetch"

# Files
link_file "$DOTFILES_DIR/starship/starship.toml" "$CONFIG_DIR/starship.toml"

# Permissions
chmod +x "$DOTFILES_DIR"/hypr/scripts/*.sh 2>/dev/null || true

echo -e "\n${GOLD}⚡ All configurations symlinked successfully!${NC}"
echo -e "${CYAN}Edits in ~/.config will now automatically reflect in your git repository.${NC}"
