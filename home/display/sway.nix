{
  config,
  dotfilesPath,
  ...
}:
{
  home.file.".config/sway".source = config.lib.file.mkOutOfStoreSymlink "${dotfilesPath}/sway";
}
