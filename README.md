## Packages
hyprland sddm waybar-hyprland-git git nvm lazygit openssh kitty swaybg neofetch wofi swaync unzip fish fish-done starship reflector nautilus udev-block-notify polkit-kde-agent seahorse gnome-keyring udisks2 brightnessctl bluez blueman pipewire playerctl pavucontrol wireplumber pipewire-pulse wl-clipboard r8168-dkms visual-studio-code-bin cloudflare-warp-bin nm-connection-editor qalculate-gtk

## Appearance
otf-cascadia-code-nerd bibata-cursor-theme papirus-icon-theme lxappearance boo-sddm-git boo-grub-git

## Tokyo Night GTK Theme
git clone https://github.com/Fausto-Korpsvart/Tokyo-Night-GTK-Theme.git
cd Tokyo-Night-GTK-Theme/
sudo cp -r themes/Tokyonight-Dark-BL-LB /usr/share/themes/
# Update Grub
sudo grub-mkconfig -o /boot/grub/grub.cfg
