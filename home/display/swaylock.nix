{
  config,
  dotfilesPath,
  ...
}:
{
  home.file.".config/swaylock".source =
    config.lib.file.mkOutOfStoreSymlink "${dotfilesPath}/swaylock";
}
