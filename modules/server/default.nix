{ config,
  lib,
  ... 
}:{
  imports = [
    ./firewall.nix
    ./samba.nix
    #./nextcloud.nix
    ./server_packages.nix
    #./virtualiztion.nix
  ];
}