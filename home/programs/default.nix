{
	config,
	...
}: let
	dotfilesPath = "${config.home.homeDirectory}/NixOS-Config/nixos-config/home/dotfiles";
in {
	imports = [
		./common.nix
		./media.nix
		# ./kitty.nix
		# ./nvim.nix
		# ./fish.nix
		# ./yazi.nix
	];
	
	### vvv  bad idea  vvv
	# home.file.".config".source = config.lib.file.mkOutOfStoreSymlink "${dotfilesPath}/dotfiles";
	
	home.file.".config/sway".source = config.lib.file.mkOutOfStoreSymlink "${dotfilesPath}/sway";
	home.file.".config/swaync".source = config.lib.file.mkOutOfStoreSymlink "${dotfilesPath}/swaync";
	home.file.".config/swaylock".source = config.lib.file.mkOutOfStoreSymlink "${dotfilesPath}/swaylock";
	home.file.".config/waybar".source = config.lib.file.mkOutOfStoreSymlink "${dotfilesPath}/waybar";
	home.file.".config/nvim".source = config.lib.file.mkOutOfStoreSymlink "${dotfilesPath}/nvim";
	home.file.".config/rofi".source = config.lib.file.mkOutOfStoreSymlink "${dotfilesPath}/rofi";
	home.file.".config/kitty".source = config.lib.file.mkOutOfStoreSymlink "${dotfilesPath}/kitty";
	home.file.".config/fish".source = config.lib.file.mkOutOfStoreSymlink "${dotfilesPath}/fish";
	home.file.".config/yazi".source = config.lib.file.mkOutOfStoreSymlink "${dotfilesPath}/yazi";
	
}
