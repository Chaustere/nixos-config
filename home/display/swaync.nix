{
  config,
  dotfilesPath,
  ...
}:
{
  home.file.".config/swaync".source = config.lib.file.mkOutOfStoreSymlink "${dotfilesPath}/swaync";
}
