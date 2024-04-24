{ config,
  pkgs,
  pkgs-unstable,
  ... 
}:{
  environment.systemPackages = with pkgs; [
    wget
    firefox
    kitty
    mc
    dialog
    vscodium
    emacs
    neofetch
    git-credential-oauth
  ];

  programs.git = {
    enable = true;
    package = pkgs.gitFull;
    config = {
      #credential.helper = "oauth";
      #user.Name  = "";
      #user.Email = "";
    };
  };

  services.flatpak.enable = true;
}