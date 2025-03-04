{
  config,
  dotfilesPath,
  ...
}:
{
  home.file.".config/waybar".source = config.lib.file.mkOutOfStoreSymlink "${dotfilesPath}/waybar";
}
