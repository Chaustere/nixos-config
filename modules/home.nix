{
	pkgs,
	nixos-user,
	...
}: {
	###################################
	#                                 #
	# home-manager user configuration #
	#                                 #
	###################################

	imports = [
		../home
	];

	programs.git = {
		userName = nixos-user.gitUserName;
		userEmail = nixos-user.gitUserEmail;
	};
}

