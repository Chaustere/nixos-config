{
  config,
  dotfilesPath,
  ...
}:
{
  home.file.".config/rofi".source = config.lib.file.mkOutOfStoreSymlink "${dotfilesPath}/rofi";
}
