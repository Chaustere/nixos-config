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

	home.file.".config".source = config.lib.file.mkOutOfStoreSymlink "${dotfiles}/sway-dotfiles";

}
