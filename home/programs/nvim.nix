{
  config,
  dotfilesPath,
  ...
}:
{
  home.file.".config/nvim".source = config.lib.file.mkOutOfStoreSymlink "${dotfilesPath}/nvim";
}
