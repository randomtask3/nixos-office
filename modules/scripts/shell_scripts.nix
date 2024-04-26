{ pkgs, ... }:
let
  nix-menu = pkgs.writeShellScriptBin "nix-menu" ''
    cd /home/morpheus/NixOS/modules/scripts/bash
    ./nixos_menu.sh
  '';
in {
  environment.systemPackages = [ 
    nix-menu
  ];
}
