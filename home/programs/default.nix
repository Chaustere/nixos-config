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
	
	### vvv  bad idea  vvv
	# home.file.".config".source = config.lib.file.mkOutOfStoreSymlink "../dotfiles";
	
	home.file.".config/sway".source = config.lib.file.mkOutOfStoreSymlink "../dotfiles/sway";
	home.file.".config/swaync".source = config.lib.file.mkOutOfStoreSymlink "../dotfiles/swaync";
	home.file.".config/swaylock".source = config.lib.file.mkOutOfStoreSymlink "../dotfiles/swaylock";
	home.file.".config/waybar".source = config.lib.file.mkOutOfStoreSymlink "../dotfiles/waybar";
	home.file.".config/nvim".source = config.lib.file.mkOutOfStoreSymlink "../dotfiles/nvim";
	home.file.".config/rofi".source = config.lib.file.mkOutOfStoreSymlink "../dotfiles/rofi";
	home.file.".config/kitty".source = config.lib.file.mkOutOfStoreSymlink "../dotfiles/kitty";
	home.file.".config/fish".source = config.lib.file.mkOutOfStoreSymlink "../dotfiles/fish";
	home.file.".config/yazi".source = config.lib.file.mkOutOfStoreSymlink "../dotfiles/yazi";
	
}
