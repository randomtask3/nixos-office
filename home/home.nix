{ config, 
  pkgs, 
  ... 
}:{
  programs.home-manager.enable = true;
  home.stateVersion = "23.11";
  home.username = "morpheus";
  home.homeDirectory = "/home/morpheus";

  home.packages = with pkgs; [
    #
  ];
}