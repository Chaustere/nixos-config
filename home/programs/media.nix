{
  pkgs,
  ...
}:
{
  home.packages = with pkgs; [
    # audio control
    pavucontrol
    playerctl

    # images
    imv
  ];

  programs = {
    mpv = {
      enable = true;
      defaultProfiles = [ "gpu-hq" ];
      scripts = [ pkgs.mpvScripts.mpris ];
    };

    obs-studio.enable = true;
  };

  services = {
    playerctld.enable = true;
  };
}
