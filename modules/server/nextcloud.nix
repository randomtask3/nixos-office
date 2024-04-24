{ self, 
  config, 
  lib, 
  pkgs, 
  ... 
}:{
  services.nextcloud = {
    enable = true;
    package = pkgs.nextcloud28;
    hostName = "nebuchadnezzar";
    #datadir = "/home/morpheus/Media/Nextcloud";
    #https = true;
    database.createLocally = true;
    config = {
      dbtype = "pgsql";
      adminpassFile = "/etc/ncpass";
    };
    settings.trusted_domains = [ "192.168.1.124" ];
  };
}