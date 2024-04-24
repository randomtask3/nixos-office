{ config,
  lib,
  ... 
}:{
    imports = [
        #./hardware-configuration.nix
        #./filesystems.nix
        ../modules
        <nixpkgs/nixos/modules/installer/virtualbox-demo.nix>
    ];
    disabledModules = [
        #../../modules/work
    ];

    networking.hostName = "nebuchadnezzar";
    system.stateVersion = "23.11";
}
