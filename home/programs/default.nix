{
	config,
	dotfiles,
	...
}: {
	imports = [
		./common.nix
		./media.nix
		# ./kitty.nix
		# ./nvim.nix
		# ./fish.nix
		# ./yazi.nix
	];

	home.file."${config.xdg.configHome}" = config.lib.file.mkOutOfStoreSymlink {
		source = "${dotfiles}/sway-dotfiles/";
		recursive = true;
	};

}
