{ pkgs, ... }:
let
  nix-menu = pkgs.writeShellScriptBin "nix-menu" ''
    cd /home/demo/NixOS/modules/scripts/bash
    ./nixos_menu.sh
  '';
in {
  environment.systemPackages = [ 
    nix-menu
  ];
}
