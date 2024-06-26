{ config,
  lib,
  ... 
}:{
  services.samba = {
    enable = true;

    # This adds to the [global] section:
    extraConfig = ''
      browseable = yes
      smb encrypt = required
    '';

    shares = {
      Matrix = {
        path = "/home/morpheus/Matrix";
        browseable = "no";  # note: each home will be browseable; the "homes" share will not.
        "read only" = "no";
        "guest ok" = "no";
        "valid_user" = "morpheus";
      };
    };
  };

  services.samba-wsdd = {
    enable = true;
    openFirewall = true;
  };
}