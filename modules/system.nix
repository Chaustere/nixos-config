{
  pkgs,
  lib,
  ...
}: {
  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # customise /etc/nix/nix.conf declaratively via `nix.settings`
  nix.settings = {
    # enable flakes globally
    experimental-features = ["nix-command" "flakes"];

    substituters = [
      "https://nix-community.cachix.org"
      "https://cache.nixos.org"
    ];

    trusted-public-keys = [
      "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
    ];
    builders-use-substitutes = true;
  };
  # do garbage collection weekly to keep disk usage low
  nix.gc = {
    automatic = lib.mkDefault true;
    dates = lib.mkDefault "weekly";
options = lib.mkDefault "--delete-older-than 7d";
  };
  

  # Enable sound.
  # hardware.pulseaudio.enable = true;
  # OR
  services = {
    pipewire = {
      enable = true;
      pulse.enable = true;
  	};
    # Enable touchpad support (enabled default in most desktopManager).
    libinput.enable = true;

	displayManager.sddm = {
	  enable = true;
	  autoNumlock = true;
	  wayland.enable = true;
	};
  
    # Enable CUPS to print documents.
    printing.enable = true;
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;
  
  # Packages installed in system profile.
  environment.systemPackages = with pkgs; [
    vim
	neovim
    wget
    tree
    fastfetch
	btop
	htop
	curl
    git
	fish
	yazi
	light
	power-profiles-daemon

	# Desktop environment packages
	kdePackages.dolphin
	swayfx
	xdg-desktop-portal
	xdg-desktop-portal-wlr
	libnotify
	xdg-utils
	swaybg
	swaylock
	swaynotificationcenter
	waybar
	rofi
	kitty
	gammastep
	pango
	wl-clipboard-rs
  ];

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  programs.mtr.enable = true;
  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };

  fonts.enableDefaultPackages = true;

	fonts.packages = with pkgs; [
		noto-fonts
		fira-code
		nerd-fonts.fira-code
		nerd-fonts.fira-mono
		nerd-fonts.fantasque-sans-mono
		nerd-fonts.symbols-only
		# (nerd-fonts.override { fonts = [ "FiraCode" "FiraMono" "FantasqueSansMono" ]; })
	];
  
  # This option defines the first version of NixOS you have installed on this particular machine,
  # and is used to maintain compatibility with application data (e.g. databases) created on older NixOS versions.
  #
  # Most users should NEVER change this value after the initial install, for any reason,
  # even if you've upgraded your system to a new NixOS release.
  #
  # This value does NOT affect the Nixpkgs version your packages and OS are pulled from,
  # so changing it will NOT upgrade your system - see https://nixos.org/manual/nixos/stable/#sec-upgrading for how
  # to actually do that.
  #
  # This value being lower than the current NixOS release does NOT mean your system is
  # out of date, out of support, or vulnerable.
  #
  # Do NOT change this value unless you have manually inspected all the changes it would make to your configuration,
  # and migrated your data accordingly.
  #
  # For more information, see `man configuration.nix` or https://nixos.org/manual/nixos/stable/options#opt-system.stateVersion .
  system.stateVersion = "24.11"; # Did you read the comment?
}
