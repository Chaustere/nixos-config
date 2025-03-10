{
  pkgs,
  ...
}:
{
  home.packages = with pkgs; [
    # archives
    zip
    unzip

    # misc utilities
    graphviz
    krita
    vlc
    qimgv

    #### development stuff
    gcc
    go
    php
    luarocks
    ruby
    jdk23
    julia-bin
    python3
    tree-sitter

    # node
    nodejs
    nodePackages.npm
    nodePackages.pnpm

    # rust
    cargo
    rustc

    vesktop
    firefox
    starship
  ];

}
