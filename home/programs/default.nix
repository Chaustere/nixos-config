{
  ...
}:
{
  imports = [
    ./common.nix
    ./media.nix
    ./starship.nix
    ./kitty.nix
    ./nvim.nix
    ./fish.nix
    ./yazi.nix
  ];
  ### vvv  bad idea  vvv
  # home.file.".config".source = config.lib.file.mkOutOfStoreSymlink "${dotfilesPath}/dotfiles";
}
