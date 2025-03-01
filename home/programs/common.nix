{
	lib, 
	pkgs, 
	...
}: {
	home.packages = with pkgs; [
		# archives
		zip
		unzip

		# misc
		graphviz
		krita
		
		## development stuff
		gcc

		# node
		nodejs
		nodePackages.npm
		nodePackages.pnpm
		
		# rust
		cargo
		rustc

		vesktop
		firefox
	];

	fonts.enableDefaultPackages = true;

	font.packages = with pkgs; [
		noto-fonts
		(nerdfonts.override { font = [ "FiraCode" "FiraMono" "FantasqueSansMono" ]; })
	];
}
