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
}
