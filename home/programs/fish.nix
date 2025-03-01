{
	config,
	dotfilesPath,
	...
}: {
	home.file.".config/fish".source = config.lib.file.mkOutOfStoreSymlink "${dotfilesPath}/fish";
}

