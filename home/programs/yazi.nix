{
	config,
	dotfilesPath,
	...
}: {
	home.file.".config/yazi".source = config.lib.file.mkOutOfStoreSymlink "${dotfilesPath}/yazi";
}


