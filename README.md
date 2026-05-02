# Overview

This repository contains my Arch Linux system configuration, including:

* Window manager (Qtile)
* Shell (Zsh)
* Terminal setup
* Development tools
* Networking / lab tools

The setup is designed for **Arch Linux + X11 + Qtile**.

# 1. Requirements (fresh system)

Install base system:

```bash
sudo pacman -S --needed base base-devel git
```

Enable networking:

```bash
sudo systemctl enable --now NetworkManager
# or whatever is used
```

---

# 2. Clone dotfiles

```bash
git clone https://github.com/bot4o/dotfiles ~/.dotfiles
cd ~/.dotfiles
```

---

# 3. Install packages

## 3.1 Core packages

```bash
sudo pacman -S --needed - < pkglist.txt
```

---

## 3.2 AUR packages

Install AUR helper (if not installed):

```bash
sudo pacman -S --needed paru-bin
```

Then:

```bash
paru -S --needed - < aurlist.txt
```

---

# 4. Apply dotfiles (symlinks)

If using `stow`:

```bash
sudo pacman -S stow
```

Apply config:

```bash
stow .
```

Or selectively:

```bash
stow zsh
stow nvim
stow qtile
```

---

# 5. Shell setup

Set Zsh as default shell:

```bash
chsh -s /bin/zsh
```

Then restart session.

---

# 6. Qtile setup

Enable X session:

```bash
echo "exec qtile start" > ~/.xinitrc
startx
```

---

# 7. Fonts

Install fonts:

```bash
sudo pacman -S noto-fonts ttf-jetbrains-mono-nerd
```

Refresh font cache:

```bash
fc-cache -fv
```

---

# 8. Post-install checklist

* [ ] Network working
* [ ] Zsh default shell
* [ ] Qtile starts via `startx`
* [ ] Fonts rendering correctly
* [ ] AUR helper installed
* [ ] Dotfiles applied via stow

---

# 10. Troubleshoot

### Rebuild broken zsh completions
```bash
rm -f ~/.zcompdump*
exec zsh
```

### Fix permission issues

```bash
sudo chown -R $USER:$USER ~/.dotfiles
```

### Reinstall packages

```bash
sudo pacman -S --needed - < pkglist.txt
```

---
