{
	...
}: {
	imports = [
		./sway.nix
		./swaylock.nix
		./swaync.nix
		./waybar.nix
		./rofi.nix
	];
	### vvv  bad idea  vvv
	# home.file.".config".source = config.lib.file.mkOutOfStoreSymlink "${dotfilesPath}/dotfiles";
}

