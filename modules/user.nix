{
	nixos-user,
	...
}: {
	#######################################
	#                                     #
	# User declaration and general config #
	#                                     #
	#######################################
	
	users.users.${nixos-user.username} = {
		isNormalUser = true;
		description = nixos-user.username;
		# Enable sudo for the user, NM, and brightness/volume adjustment.
		extraGroups = [ "wheel" "networkmanager" "video"]; 
	};

	nix.settings.trusted-users = [nixos-user.username];
}

