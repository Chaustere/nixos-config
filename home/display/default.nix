{
  ...
}:
{
  imports = [
    ./sway.nix
    ./swaylock.nix
    ./swaync.nix
    ./waybar.nix
    ./rofi.nix
    ./gammastep.nix
  ];
  ### vvv  bad idea  vvv
  # home.file.".config".source = config.lib.file.mkOutOfStoreSymlink "${dotfilesPath}/dotfiles";
}
