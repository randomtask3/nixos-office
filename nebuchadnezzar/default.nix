{ config,
  lib,
  ... 
}:{
    imports = [
        ./hardware-configuration.nix
        ./filesystems.nix
        ../modules
    ];
    disabledModules = [
        #../../modules/work
    ];

    networking.hostName = "nebuchadnezzar";
    system.stateVersion = "23.11";
}
