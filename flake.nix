{
  description = "NixOS configuration";

  ##################################################################################################################
  #
  # Initial config taken from https://github.com/ryan4yin/nix-config/tree/i3-kickstarter
  #
  ##################################################################################################################

  # the nixConfig here only affects the flake itself, not the system configuration!
  nixConfig = {
    # substituers will be appended to the default substituters when fetching packages
    extra-substituters = [
      # nix community's cache server
      "https://nix-community.cachix.org"
      "https://cache.nixos.org"
    ];
    extra-trusted-public-keys = [
      "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
    ];
  };

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
		url = "github:nix-community/home-manager/master";
    	inputs.nixpkgs.follows = "nixpkgs";
	};

	# import user information
	# this flake should expose the following attributes : 
	# { 
	#    username = "";
	#    gitUserName = "";
	#    gitUserEmail = "";
	# }
	nixos-user = {
		url = "git@github.com:Chaustere/nixos-user.git";
	};

	# import dotfiles repo for home-manager
	dotfiles = {
		url = "github:Chaustere/dotfiles/main";
		flake = false;
	};
  };

  outputs = inputs @ {
    self,
    nixpkgs,
    home-manager,
	nixos-user,
	dotfiles,
    ...
  }: {
    nixosConfigurations = {
      twm = let
        specialArgs = {inherit nixos-user;};
      in
        nixpkgs.lib.nixosSystem {
          inherit specialArgs;
          system = "x86_64-linux";

          modules = [
            ./hosts/twm
            ./modules/user.nix

            home-manager.nixosModules.home-manager
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;

              home-manager.extraSpecialArgs = inputs // specialArgs.nixos-user.username;
              home-manager.users.${nixos-user.username} = import ./modules/home.nix;
            }
          ];
        };
    };
  };
}
